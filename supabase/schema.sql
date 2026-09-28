create extension if not exists pgcrypto;

create table if not exists public.profiles(
  id uuid primary key references auth.users(id) on delete cascade,
  full_name text not null default '',
  username text not null unique,
  phone text,
  country text,
  company_name text,
  avatar_url text,
  role text not null default 'user' check(role in('user','admin')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.templates(
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  name text not null,
  description text,
  preview_url text,
  is_published boolean not null default false,
  created_at timestamptz not null default now()
);

create table if not exists public.websites(
  id uuid primary key default gen_random_uuid(),
  owner_id uuid not null unique references public.profiles(id) on delete cascade,
  template_id uuid references public.templates(id) on delete set null,
  site_name text,
  headline text,
  bio text,
  status text not null default 'draft' check(status in('draft','published','suspended')),
  subdomain text not null unique,
  seo_title text,
  seo_description text,
  og_image_url text,
  favicon_url text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.projects(
  id uuid primary key default gen_random_uuid(),
  website_id uuid not null references public.websites(id) on delete cascade,
  title text not null,
  description text,
  image_url text,
  technology text,
  project_url text,
  github_url text,
  sort_order integer not null default 0
);

create table if not exists public.services(
  id uuid primary key default gen_random_uuid(),
  website_id uuid not null references public.websites(id) on delete cascade,
  title text not null,
  description text,
  icon text,
  sort_order integer not null default 0
);

create table if not exists public.skills(
  id uuid primary key default gen_random_uuid(),
  website_id uuid not null references public.websites(id) on delete cascade,
  name text not null,
  level integer check(level between 0 and 100),
  sort_order integer not null default 0
);

create table if not exists public.domains(
  id uuid primary key default gen_random_uuid(),
  website_id uuid not null references public.websites(id) on delete cascade,
  hostname text not null unique,
  status text not null default 'pending' check(status in('pending','verifying','verified','active','failed')),
  verification_token text not null,
  created_at timestamptz not null default now()
);

create index if not exists websites_subdomain_idx on public.websites(subdomain);
create index if not exists domains_hostname_idx on public.domains(hostname);

alter table public.profiles enable row level security;
alter table public.templates enable row level security;
alter table public.websites enable row level security;
alter table public.projects enable row level security;
alter table public.services enable row level security;
alter table public.skills enable row level security;
alter table public.domains enable row level security;

create or replace function public.is_admin()
returns boolean language sql stable security definer set search_path=public
as $$ select exists(select 1 from public.profiles where id=auth.uid() and role='admin'); $$;

create or replace function public.handle_new_user()
returns trigger language plpgsql security definer set search_path=public
as $$
declare
  base_username text;
  candidate text;
  suffix integer := 0;
begin
  base_username := lower(regexp_replace(coalesce(new.raw_user_meta_data->>'username',split_part(new.email,'@',1),'user'),'[^a-z0-9-]','-','g'));
  base_username := trim(both '-' from left(base_username,24));
  if length(base_username)<3 then base_username:='user'; end if;
  candidate:=base_username;
  while exists(select 1 from public.profiles where username=candidate) loop
    suffix:=suffix+1;
    candidate:=left(base_username,30-length(suffix::text)-1)||'-'||suffix::text;
  end loop;
  insert into public.profiles(id,full_name,username,phone)
  values(new.id,coalesce(new.raw_user_meta_data->>'full_name',''),candidate,new.raw_user_meta_data->>'phone')
  on conflict(id) do nothing;
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created after insert on auth.users
for each row execute procedure public.handle_new_user();

create or replace function public.handle_profile_website()
returns trigger language plpgsql security definer set search_path=public
as $$
begin
  insert into public.websites(owner_id,site_name,headline,bio,subdomain)
  values(new.id,new.full_name,'Creative Developer','Tell the world what you do.',new.username)
  on conflict(owner_id) do nothing;
  return new;
end;
$$;

drop trigger if exists on_profile_created on public.profiles;
create trigger on_profile_created after insert on public.profiles
for each row execute procedure public.handle_profile_website();

drop policy if exists profiles_self on public.profiles;
drop policy if exists profiles_admin on public.profiles;
drop policy if exists templates_public_read on public.templates;
drop policy if exists templates_admin_write on public.templates;
drop policy if exists websites_owner on public.websites;
drop policy if exists websites_public_read on public.websites;
drop policy if exists websites_admin on public.websites;
drop policy if exists projects_owner on public.projects;
drop policy if exists projects_public_read on public.projects;
drop policy if exists services_owner on public.services;
drop policy if exists services_public_read on public.services;
drop policy if exists skills_owner on public.skills;
drop policy if exists skills_public_read on public.skills;
drop policy if exists domains_owner on public.domains;
drop policy if exists domains_admin on public.domains;

create policy profiles_self on public.profiles for all using(id=auth.uid()) with check(id=auth.uid());
create policy profiles_admin on public.profiles for select using(public.is_admin());

create policy templates_public_read on public.templates for select using(is_published=true or public.is_admin());
create policy templates_admin_write on public.templates for all using(public.is_admin()) with check(public.is_admin());

create policy websites_owner on public.websites for all using(owner_id=auth.uid()) with check(owner_id=auth.uid());
create policy websites_public_read on public.websites for select using(status='published');
create policy websites_admin on public.websites for all using(public.is_admin()) with check(public.is_admin());

create policy projects_owner on public.projects for all
using(exists(select 1 from public.websites w where w.id=website_id and w.owner_id=auth.uid()))
with check(exists(select 1 from public.websites w where w.id=website_id and w.owner_id=auth.uid()));
create policy projects_public_read on public.projects for select
using(exists(select 1 from public.websites w where w.id=website_id and w.status='published'));

create policy services_owner on public.services for all
using(exists(select 1 from public.websites w where w.id=website_id and w.owner_id=auth.uid()))
with check(exists(select 1 from public.websites w where w.id=website_id and w.owner_id=auth.uid()));
create policy services_public_read on public.services for select
using(exists(select 1 from public.websites w where w.id=website_id and w.status='published'));

create policy skills_owner on public.skills for all
using(exists(select 1 from public.websites w where w.id=website_id and w.owner_id=auth.uid()))
with check(exists(select 1 from public.websites w where w.id=website_id and w.owner_id=auth.uid()));
create policy skills_public_read on public.skills for select
using(exists(select 1 from public.websites w where w.id=website_id and w.status='published'));

create policy domains_owner on public.domains for all
using(exists(select 1 from public.websites w where w.id=website_id and w.owner_id=auth.uid()))
with check(exists(select 1 from public.websites w where w.id=website_id and w.owner_id=auth.uid()));
create policy domains_admin on public.domains for all using(public.is_admin()) with check(public.is_admin());

create or replace function public.touch_updated_at()
returns trigger language plpgsql
as $$ begin new.updated_at=now(); return new; end; $$;

drop trigger if exists profiles_touch_updated_at on public.profiles;
create trigger profiles_touch_updated_at before update on public.profiles
for each row execute procedure public.touch_updated_at();

drop trigger if exists websites_touch_updated_at on public.websites;
create trigger websites_touch_updated_at before update on public.websites
for each row execute procedure public.touch_updated_at();