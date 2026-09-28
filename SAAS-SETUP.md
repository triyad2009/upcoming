# Tahsinullah Pro SaaS
The current repository is a GitHub Pages/static portfolio. This PR adds the frontend builder shell and the Supabase database foundation without destroying the existing live portfolio.
Production requirements: server-capable hosting such as Vercel, Supabase Auth/Database, server-side hostname resolution, wildcard subdomain configuration, and real DNS ownership verification for custom domains.
The browser demo under /platform/ is intentionally non-production and uses localStorage. It must be replaced with Supabase Auth before public account creation.
Keep the existing CNAME for the current portfolio during migration.