<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Tahsinullah Riyad — Web Developer, Web Designer and Freelancer.">
<title>TR Portfolio — Tahsinullah Riyad</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:ital,wght@0,400;0,500;0,600;0,700;0,800;1,500;1,600&family=Noto+Sans+Bengali:wght@400;500;600;700&family=DM+Sans:wght@400;500;600&display=swap" rel="stylesheet">

<style>
:root{
  --cream:#FFECD1;
  --sage-light:#F3E5CC;
  --sage:#F1D8BE;
  --text:#001524;
  --text-mid:#15616D;
  --muted:rgba(0,21,36,.58);
  --violet:#FF7D00;
  --violet-dark:#78290F;
  --violet-tint:rgba(255,125,0,.10);
  --glass-strong:rgba(255,255,255,.52);
  --glass-mid:rgba(255,255,255,.38);
  --glass-light:rgba(255,255,255,.26);
  --border-strong:rgba(255,255,255,.68);
  --border-mid:rgba(255,255,255,.55);
  --border-light:rgba(255,255,255,.42);
  --radius-xl:28px;
  --radius-lg:20px;
}

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
}

html{
  scroll-behavior:smooth;
}

body{
  min-height:100vh;
  font-family:"JetBrains Mono","Noto Sans Bengali","DM Sans",monospace;
  color:var(--text);
  background:
    radial-gradient(
      ellipse 70% 60% at 80% 10%,
      rgba(21,97,109,.32) 0%,
      transparent 60%
    ),
    radial-gradient(
      ellipse 50% 70% at 15% 85%,
      rgba(255,125,0,.20) 0%,
      transparent 55%
    ),
    linear-gradient(
      160deg,
      var(--cream) 0%,
      var(--sage-light) 45%,
      var(--sage) 100%
    );
  overflow-x:hidden;
}

body::before{
  content:"";
  position:fixed;
  inset:-20%;
  background:
    radial-gradient(
      circle at 75% 20%,
      rgba(255,255,255,.25),
      transparent 30%
    );
  filter:blur(70px);
  pointer-events:none;
  z-index:-1;
}

a{
  color:inherit;
  text-decoration:none;
}

button{
  font:inherit;
  border:0;
  cursor:pointer;
}

.container{
  width:min(1120px,calc(100% - 36px));
  margin:auto;
}

/* =========================
   GLASS SYSTEM
========================= */

.glass-strong{
  background:var(--glass-strong);
  backdrop-filter:blur(20px);
  -webkit-backdrop-filter:blur(20px);
  border:1px solid var(--border-strong);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.9),
    inset 0 -1px 0 rgba(255,255,255,.15),
    0 8px 32px rgba(0,0,0,.06),
    0 2px 8px rgba(0,0,0,.04);
}

.glass-mid{
  background:var(--glass-mid);
  backdrop-filter:blur(16px);
  -webkit-backdrop-filter:blur(16px);
  border:1px solid var(--border-mid);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.8),
    0 8px 24px rgba(0,0,0,.05);
}

.glass-light{
  background:var(--glass-light);
  backdrop-filter:blur(10px);
  -webkit-backdrop-filter:blur(10px);
  border:1px solid var(--border-light);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.6),
    0 4px 12px rgba(0,0,0,.04);
}

/* =========================
   NAVIGATION
========================= */

.nav-wrap{
  position:sticky;
  top:18px;
  z-index:1000;
  display:flex;
  justify-content:center;
  padding-top:18px;
}

nav{
  width:min(860px,calc(100% - 36px));
  padding:11px 16px;
  border-radius:999px;
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:16px;
  background:rgba(255,255,255,.52);
  backdrop-filter:blur(20px);
  -webkit-backdrop-filter:blur(20px);
  border:1px solid rgba(255,255,255,.7);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.9),
    0 8px 24px rgba(0,21,36,.06);
}

.logo{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:20px;
  white-space:nowrap;
}

.logo em{
  color:var(--violet);
}

.nav-links{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:11px;
  color:var(--text-mid);
  letter-spacing:.02em;
  padding:0 6px;
}

.menu-btn{
  display:flex;
  flex-direction:column;
  align-items:center;
  justify-content:center;
  gap:5px;
  width:38px;
  height:38px;
  border-radius:50%;
  background:rgba(255,255,255,.5);
  position:relative;
  z-index:2100;
  flex-shrink:0;
}

.menu-btn span{
  display:block;
  width:16px;
  height:2px;
  border-radius:2px;
  background:var(--text);
  transition:transform .35s cubic-bezier(.76,0,.24,1),opacity .25s ease;
}

.menu-btn.open span:nth-child(1){
  transform:translateY(7px) rotate(45deg);
}

.menu-btn.open span:nth-child(2){
  opacity:0;
}

.menu-btn.open span:nth-child(3){
  transform:translateY(-7px) rotate(-45deg);
}

/* =========================
   GLASS BUILDING FLOORS MENU
========================= */

.menu-overlay{
  position:fixed;
  inset:0;
  z-index:1900;
  display:flex;
  flex-direction:column;
  align-items:center;
  justify-content:center;
  pointer-events:none;
  background:rgba(0,21,36,.18);
  backdrop-filter:blur(6px);
  -webkit-backdrop-filter:blur(6px);
  opacity:0;
  transition:opacity .35s ease;
}

.menu-overlay.open{
  pointer-events:all;
  opacity:1;
}

.menu-stack{
  position:relative;
  width:min(420px,calc(100% - 40px));
  display:flex;
  flex-direction:column;
  gap:0;
  perspective:900px;
}

.menu-floor{
  position:relative;
  width:100%;
  padding:22px 28px;
  border-radius:18px;
  background:rgba(255,255,255,.42);
  backdrop-filter:blur(22px);
  -webkit-backdrop-filter:blur(22px);
  border:1px solid rgba(255,255,255,.72);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.95),
    inset 0 -1px 0 rgba(255,255,255,.12),
    0 12px 40px rgba(0,21,36,.12),
    0 4px 12px rgba(0,0,0,.06);
  margin-bottom:-8px;
  transform-origin:center top;
  opacity:0;
  pointer-events:none;
  will-change:transform,opacity;
}

/* slight horizontal offsets so floors look "disorderly" like real stacked slabs */
.menu-floor:nth-child(1){ --rx: -3deg; --tx: -14px;  --ty: -18px; --rz: 1.2deg; }
.menu-floor:nth-child(2){ --rx:  2deg; --tx:  18px;  --ty: -10px; --rz:-1.8deg; }
.menu-floor:nth-child(3){ --rx: -1.5deg; --tx: -8px; --ty: -6px;  --rz: 0.8deg; }
.menu-floor:nth-child(4){ --rx:  2.5deg; --tx: 12px; --ty: -4px;  --rz:-1.1deg; }
.menu-floor:nth-child(5){ --rx: -2deg; --tx: -16px;  --ty:  2px;  --rz: 1.5deg; }
.menu-floor:nth-child(6){ --rx:  1deg; --tx:  6px;   --ty:  6px;  --rz:-0.6deg; }

.menu-floor .menu-link{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:clamp(22px,4.5vw,32px);
  font-weight:700;
  color:var(--text);
  display:flex;
  align-items:center;
  gap:12px;
  opacity:.9;
  transition:color .2s ease, opacity .2s ease;
}

.menu-floor .menu-link::before{
  content:"</>";
  color:var(--violet);
  font-size:.55em;
  opacity:.7;
  flex-shrink:0;
}

.menu-floor .menu-link:hover,
.menu-floor .menu-link.active{
  color:var(--violet);
  opacity:1;
}

.menu-floor .floor-label{
  font-size:10px;
  letter-spacing:.12em;
  text-transform:uppercase;
  color:var(--violet);
  margin-bottom:6px;
  opacity:.85;
}

/* OPEN: floors drop from above one by one and settle with slight disorder */
.menu-overlay.open .menu-floor{
  animation: floorDropIn .7s cubic-bezier(.22,1.1,.36,1) forwards;
  pointer-events:auto;
}

.menu-overlay.open .menu-floor:nth-child(1){ animation-delay: .05s; }
.menu-overlay.open .menu-floor:nth-child(2){ animation-delay: .14s; }
.menu-overlay.open .menu-floor:nth-child(3){ animation-delay: .23s; }
.menu-overlay.open .menu-floor:nth-child(4){ animation-delay: .32s; }
.menu-overlay.open .menu-floor:nth-child(5){ animation-delay: .41s; }
.menu-overlay.open .menu-floor:nth-child(6){ animation-delay: .50s; }

@keyframes floorDropIn{
  0%{
    opacity:0;
    transform: translateY(-120vh) translateX(var(--tx)) rotateX(18deg) rotateZ(var(--rz)) scale(.96);
  }
  65%{
    opacity:1;
    transform: translateY(8px) translateX(calc(var(--tx) * .6)) rotateX(-4deg) rotateZ(calc(var(--rz) * .5)) scale(1.01);
  }
  100%{
    opacity:1;
    transform: translateY(0) translateX(var(--tx)) rotateX(var(--rx)) rotateZ(var(--rz)) scale(1);
  }
}

/* CLOSE: floors fall downward like raindrops (triggered via JS class) */
.menu-overlay.closing .menu-floor{
  animation: floorRainOut .65s cubic-bezier(.55,.05,.35,1) forwards !important;
  pointer-events:none;
}

.menu-overlay.closing .menu-floor:nth-child(1){ animation-delay: .00s !important; }
.menu-overlay.closing .menu-floor:nth-child(2){ animation-delay: .06s !important; }
.menu-overlay.closing .menu-floor:nth-child(3){ animation-delay: .12s !important; }
.menu-overlay.closing .menu-floor:nth-child(4){ animation-delay: .18s !important; }
.menu-overlay.closing .menu-floor:nth-child(5){ animation-delay: .24s !important; }
.menu-overlay.closing .menu-floor:nth-child(6){ animation-delay: .30s !important; }

@keyframes floorRainOut{
  0%{
    opacity:1;
    transform: translateY(0) translateX(var(--tx)) rotateX(var(--rx)) rotateZ(var(--rz)) scale(1);
  }
  100%{
    opacity:0;
    transform: translateY(110vh) translateX(calc(var(--tx) * 1.8)) rotateX(12deg) rotateZ(calc(var(--rz) * 2.5)) scale(.92);
  }
}

/* =========================
   HERO
========================= */

.hero{
  min-height:calc(100vh - 70px);
  display:grid;
  grid-template-columns:1.05fr .95fr;
  align-items:center;
  gap:60px;
  padding:80px 0 100px;
}

.eyebrow{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:11px;
  font-weight:600;
  letter-spacing:.06em;
  text-transform:uppercase;
  color:var(--violet);
  margin-bottom:18px;
}

.eyebrow::before{
  content:"// ";
  color:var(--text-mid);
}

@keyframes blinkCursor{
  50%{ opacity:0; }
}

.type-cursor{
  display:inline-block;
  color:var(--violet);
  margin-left:1px;
  animation:blinkCursor .9s steps(1) infinite;
}

.blink{
  display:inline-block;
  color:var(--violet);
  font-size:15px;
  margin-left:3px;
  animation:blinkCursor 1s steps(1) infinite;
}

.term-dots{
  display:flex;
  gap:6px;
}

.term-dots i{
  width:9px;
  height:9px;
  border-radius:50%;
  display:block;
}

.term-dots i:nth-child(1){ background:var(--violet-dark); }
.term-dots i:nth-child(2){ background:var(--violet); }
.term-dots i:nth-child(3){ background:var(--text-mid); }

.term-file{
  font-size:11px;
  color:var(--muted);
  letter-spacing:.01em;
}

.btn-primary::before{
  content:"$ ";
  opacity:.7;
}

.hero h1{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:clamp(32px,4.6vw,56px);
  line-height:1.15;
  letter-spacing:-.02em;
  font-weight:700;
}

.hero h1 em{
  color:var(--violet);
  font-style:italic;
}

.hero-text{
  max-width:560px;
  margin-top:24px;
  color:var(--muted);
  font-size:16px;
  line-height:1.72;
}

.hero-actions{
  display:flex;
  gap:12px;
  margin-top:30px;
  flex-wrap:wrap;
}

.btn{
  padding:12px 21px;
  border-radius:12px;
  font-size:14px;
  font-weight:500;
  transition:
    transform .18s ease,
    box-shadow .18s ease,
    background .18s ease;
}

.btn:hover{
  transform:translateY(-2px);
}

.btn-primary{
  background:var(--violet);
  color:#fff;
  box-shadow:
    0 6px 20px rgba(255,125,0,.32),
    inset 0 1px 0 rgba(255,255,255,.2);
}

.btn-primary:hover{
  background:var(--violet-dark);
  box-shadow:0 12px 32px rgba(255,125,0,.38);
}

.btn-ghost{
  background:rgba(255,255,255,.42);
  color:var(--text);
  border:1px solid rgba(255,255,255,.65);
  backdrop-filter:blur(12px);
}

.btn-ghost:hover{
  background:rgba(255,255,255,.58);
}

/* =========================
   HERO CARD
========================= */

.hero-card{
  min-height:540px;
  padding:30px;
  border-radius:var(--radius-xl);
  position:relative;
  overflow:hidden;
}

.hero-card::before{
  content:"";
  position:absolute;
  width:220px;
  height:220px;
  top:-110px;
  right:-90px;
  background:rgba(255,255,255,.38);
  border-radius:50%;
  filter:blur(35px);
  pointer-events:none;
}

.card-top{
  display:flex;
  justify-content:space-between;
  align-items:center;
  color:var(--muted);
  font-size:12px;
  position:relative;
  z-index:2;
}

.status{
  display:flex;
  align-items:center;
  gap:7px;
}

.status-dot{
  width:8px;
  height:8px;
  border-radius:50%;
  background:#15616D;
  box-shadow:0 0 0 4px rgba(21,97,109,.16);
}

/* =========================
   PROFILE IMAGE GLASS FRAME
========================= */

.profile-area{
  display:flex;
  justify-content:center;
  margin:25px 0 10px;
}

.profile-glass{
  width:142px;
  height:142px;
  padding:7px;
  border-radius:50%;
  background:rgba(255,255,255,.34);
  backdrop-filter:blur(12px);
  -webkit-backdrop-filter:blur(12px);
  border:1px solid rgba(255,255,255,.72);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.95),
    0 12px 30px rgba(0,21,36,.10);
  position:relative;
}

.profile-glass::after{
  content:"";
  position:absolute;
  inset:7px;
  border-radius:50%;
  border:1px solid rgba(255,255,255,.45);
  pointer-events:none;
}

.profile-glass img{
  width:100%;
  height:100%;
  display:block;
  object-fit:cover;
  object-position:center;
  border-radius:50%;
  border:1px solid rgba(255,255,255,.55);
}

/* =========================
   PROFILE INFO
========================= */

.profile-info{
  text-align:center;
  margin-top:13px;
}

.profile-info h2{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:28px;
  font-weight:400;
}

.profile-info h2 em{
  color:var(--violet);
}

.profile-role{
  color:var(--muted);
  font-size:12px;
  margin-top:4px;
}

.ring-area{
  display:flex;
  justify-content:center;
  align-items:center;
  margin:18px 0 18px;
  position:relative;
}

.ring-svg{
  transform:rotate(-90deg);
}

.ring-track{
  stroke:rgba(0,21,36,.08);
}

.ring-fill{
  stroke:var(--violet);
  stroke-linecap:round;
  stroke-dasharray:408;
  stroke-dashoffset:408;
  animation:drawRing 1.4s cubic-bezier(.4,0,.2,1) .4s forwards;
}

@keyframes drawRing{
  to{
    stroke-dashoffset:98;
  }
}

.ring-center{
  position:absolute;
  text-align:center;
}

.ring-number{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:39px;
  line-height:1;
}

.ring-label{
  margin-top:5px;
  color:var(--muted);
  font-size:10px;
}

.stats{
  display:grid;
  grid-template-columns:1fr 1fr;
  gap:12px;
}

.stat{
  padding:14px;
  border-radius:16px;
}

.stat-label{
  font-size:11px;
  color:var(--muted);
}

.stat-value{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:24px;
  margin-top:4px;
}

.stat-change{
  font-size:10px;
  color:#15616D;
  margin-top:3px;
}

/* =========================
   SECTIONS
========================= */

section{
  padding:100px 0;
}

.section-head{
  max-width:650px;
  margin-bottom:42px;
}

.section-head .eyebrow{
  margin-bottom:12px;
}

.section-title{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-weight:700;
  font-size:clamp(24px,3.2vw,38px);
  line-height:1.22;
  letter-spacing:-.015em;
}

.section-title em{
  color:var(--violet);
  font-style:italic;
}

.section-subtitle{
  margin-top:14px;
  color:var(--muted);
  line-height:1.7;
}

/* =========================
   ABOUT
========================= */

.about-grid{
  display:grid;
  grid-template-columns:1.1fr .9fr;
  gap:20px;
}

.about-card{
  padding:30px;
  border-radius:var(--radius-lg);
}

.about-card p{
  color:var(--muted);
  line-height:1.75;
  margin-top:15px;
}

.about-highlight{
  margin-top:25px;
  padding:18px;
  border-radius:15px;
  background:var(--violet-tint);
  border:1px solid rgba(255,125,0,.14);
  color:var(--violet);
  font-size:14px;
}

.info-list{
  display:grid;
  gap:12px;
}

.info-item{
  display:flex;
  justify-content:space-between;
  padding:15px 0;
  border-bottom:1px solid rgba(0,21,36,.08);
  font-size:14px;
}

.info-item span:first-child{
  color:var(--muted);
}

/* =========================
   SKILLS
========================= */

.bento{
  display:grid;
  grid-template-columns:1.4fr 1fr 1fr;
  grid-template-rows:auto auto;
  gap:16px;
}

.bento-card{
  padding:25px;
  border-radius:var(--radius-lg);
  transition:
    transform .2s ease,
    box-shadow .2s ease;
}

.bento-card:hover{
  transform:translateY(-3px);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.8),
    0 15px 35px rgba(0,0,0,.07);
}

.bento-card.tall{
  grid-row:span 2;
}

.bento-card.wide{
  grid-column:span 2;
}

.card-tag{
  color:var(--violet);
  text-transform:uppercase;
  letter-spacing:.1em;
  font-size:10px;
  font-weight:600;
}

.bento-card h3{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:23px;
  font-weight:400;
  margin-top:9px;
}

.bento-card p{
  color:var(--muted);
  font-size:13px;
  line-height:1.65;
  margin-top:8px;
}

.bar-chart{
  height:170px;
  display:flex;
  align-items:end;
  justify-content:space-between;
  gap:10px;
  margin-top:35px;
}

.bar{
  width:100%;
  height:var(--height);
  background:var(--violet);
  opacity:.72;
  border-radius:8px 8px 3px 3px;
  transform:scaleY(0);
  transform-origin:bottom;
  animation:barUp 1s cubic-bezier(.4,0,.2,1) forwards;
}

.bar:nth-child(2){animation-delay:.08s}
.bar:nth-child(3){animation-delay:.16s}
.bar:nth-child(4){animation-delay:.24s}
.bar:nth-child(5){animation-delay:.32s}
.bar:nth-child(6){animation-delay:.40s}
.bar:nth-child(7){animation-delay:.48s}

@keyframes barUp{
  to{transform:scaleY(1)}
}

.goal{
  margin-top:22px;
}

.goal-row{
  display:flex;
  justify-content:space-between;
  font-size:12px;
  margin-bottom:8px;
}

.goal-row span:last-child{
  color:var(--violet);
}

.goal-track{
  height:7px;
  border-radius:999px;
  background:rgba(0,21,36,.08);
  overflow:hidden;
}

.goal-fill{
  height:100%;
  width:var(--progress);
  background:var(--violet);
  border-radius:999px;
  transform:scaleX(0);
  transform-origin:left;
  animation:goalFill 1.1s cubic-bezier(.4,0,.2,1) .3s forwards;
}

@keyframes goalFill{
  to{transform:scaleX(1)}
}

.alert{
  display:flex;
  gap:12px;
  padding:13px;
  margin-top:13px;
  border-radius:14px;
}

.alert-icon{
  width:32px;
  height:32px;
  display:grid;
  place-items:center;
  border-radius:10px;
  background:var(--violet-tint);
  color:var(--violet);
  font-weight:600;
}

.alert strong{
  display:block;
  font-size:13px;
}

.alert small{
  display:block;
  color:var(--muted);
  margin-top:3px;
  font-size:11px;
}

/* =========================
   PROJECTS
========================= */

.projects{
  display:grid;
  grid-template-columns:repeat(2,1fr);
  gap:18px;
}

.project{
  min-height:300px;
  padding:28px;
  border-radius:var(--radius-lg);
  position:relative;
  overflow:hidden;
  transition:.2s ease;
}

.project:hover{
  transform:translateY(-4px);
}

.project-number{
  font-size:11px;
  color:var(--violet);
  letter-spacing:.1em;
}

.project h3{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:29px;
  font-weight:400;
  margin-top:55px;
}

.project p{
  color:var(--muted);
  font-size:13px;
  line-height:1.7;
  max-width:480px;
  margin-top:10px;
}

.project-tech{
  display:flex;
  flex-wrap:wrap;
  gap:7px;
  margin-top:22px;
}

.tech{
  padding:7px 10px;
  border-radius:999px;
  background:rgba(255,255,255,.42);
  border:1px solid rgba(255,255,255,.55);
  font-size:11px;
  color:var(--text-mid);
}

/* =========================
   SERVICES
========================= */

.services{
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:16px;
}

.service{
  padding:27px;
  border-radius:var(--radius-lg);
}

.service-icon{
  width:42px;
  height:42px;
  display:grid;
  place-items:center;
  border-radius:13px;
  background:var(--violet-tint);
  color:var(--violet);
  margin-bottom:25px;
}

.service h3{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:22px;
  font-weight:400;
}

.service p{
  color:var(--muted);
  font-size:13px;
  line-height:1.7;
  margin-top:8px;
}

/* =========================
   JOURNEY
========================= */

.timeline{
  position:relative;
  max-width:800px;
}

.timeline::before{
  content:"";
  position:absolute;
  left:7px;
  top:10px;
  bottom:10px;
  width:1px;
  background:rgba(0,21,36,.12);
}

.timeline-item{
  position:relative;
  padding-left:40px;
  margin-bottom:35px;
}

.timeline-dot{
  position:absolute;
  left:0;
  top:5px;
  width:15px;
  height:15px;
  border-radius:50%;
  background:var(--violet);
  box-shadow:0 0 0 5px rgba(255,125,0,.1);
}

.timeline-date{
  color:var(--violet);
  font-size:11px;
  text-transform:uppercase;
  letter-spacing:.1em;
}

.timeline h3{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:23px;
  font-weight:400;
  margin-top:5px;
}

.timeline p{
  color:var(--muted);
  line-height:1.7;
  font-size:13px;
  margin-top:7px;
}

/* =========================
   CONTACT
========================= */

.contact-grid{
  display:grid;
  grid-template-columns:1fr .85fr;
  gap:18px;
}

.cta{
  padding:55px;
  border-radius:var(--radius-xl);
  text-align:center;
}

.cta h2{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:clamp(32px,4vw,50px);
  font-weight:400;
}

.cta h2 em{
  color:var(--violet);
}

.cta p{
  max-width:600px;
  margin:14px auto 25px;
  color:var(--muted);
  line-height:1.7;
}

.contact-card{
  padding:30px;
  border-radius:var(--radius-xl);
}

.contact-card h3{
  font-family:"JetBrains Mono","Noto Sans Bengali",monospace;
  font-size:25px;
  font-weight:400;
  margin-bottom:20px;
}

.contact-list{
  display:grid;
  gap:10px;
}

.contact-link{
  display:flex;
  align-items:center;
  gap:12px;
  padding:13px;
  border-radius:13px;
  font-size:13px;
  color:var(--text-mid);
  transition:.18s ease;
}

.contact-link:hover{
  transform:translateX(3px);
  background:rgba(255,255,255,.45);
  color:var(--violet);
}

.contact-icon{
  width:35px;
  height:35px;
  border-radius:10px;
  display:grid;
  place-items:center;
  background:var(--violet-tint);
  color:var(--violet);
  font-size:11px;
  font-weight:600;
}

/* =========================
   FOOTER
========================= */

footer{
  padding:45px 0 30px;
}

.footer-inner{
  display:flex;
  justify-content:space-between;
  align-items:center;
  gap:20px;
  padding-top:25px;
  border-top:1px solid rgba(0,21,36,.1);
}

.footer-copy{
  color:var(--muted);
  font-size:12px;
}

.socials{
  display:flex;
  gap:8px;
  flex-wrap:wrap;
}

.social{
  width:35px;
  height:35px;
  display:grid;
  place-items:center;
  border-radius:50%;
  color:var(--text-mid);
  font-size:10px;
  transition:.18s ease;
}

.social:hover{
  color:var(--violet);
  background:rgba(255,255,255,.45);
}

/* =========================
   REVEAL
========================= */

.reveal{
  opacity:0;
  transform:translateY(22px);
  transition:
    opacity .7s ease,
    transform .7s ease;
}

.reveal.show{
  opacity:1;
  transform:translateY(0);
}

/* =========================
   RESPONSIVE
========================= */

@media(max-width:900px){

  .hero{
    grid-template-columns:1fr;
    gap:40px;
    padding-top:65px;
  }

  .hero-card{
    max-width:650px;
    width:100%;
    margin:auto;
  }

  .about-grid,
  .contact-grid{
    grid-template-columns:1fr;
  }

  .bento{
    grid-template-columns:1fr 1fr;
  }

  .bento-card.tall{
    grid-row:auto;
  }

  .bento-card.wide{
    grid-column:span 2;
  }

  .services{
    grid-template-columns:1fr 1fr;
  }
}

@media(max-width:680px){

  .nav-links{
    display:none;
  }

  .hero{
    padding:55px 0 70px;
  }

  .hero h1{
    font-size:43px;
  }

  section{
    padding:75px 0;
  }

  .hero-card{
    padding:24px;
    min-height:520px;
  }

  .profile-glass{
    width:125px;
    height:125px;
  }

  .bento{
    grid-template-columns:1fr;
  }

  .bento-card.wide{
    grid-column:auto;
  }

  .projects{
    grid-template-columns:1fr;
  }

  .services{
    grid-template-columns:1fr;
  }

  .cta{
    padding:35px 22px;
  }

  .footer-inner{
    flex-direction:column;
    text-align:center;
  }

  .menu-floor{
    padding:18px 22px;
  }
}

@media(prefers-reduced-motion:reduce){

  html{
    scroll-behavior:auto;
  }

  *,
  *::before,
  *::after{
    animation:none !important;
    transition:none !important;
  }

  .reveal{
    opacity:1;
    transform:none;
  }

  .menu-overlay.open .menu-floor,
  .menu-overlay.closing .menu-floor{
    opacity:1;
    transform:none;
  }
}
</style>
</head>

<body>

<!-- =========================
     NAVIGATION
========================= -->

<div class="nav-wrap">
<nav>

  <a href="#home" class="logo">
    TR<em>.</em><span class="blink">▍</span>
  </a>

  <div class="nav-links" id="navLinks">
    <span class="nav-hint">// tap to navigate</span>
  </div>

  <button class="menu-btn" id="menuBtn" aria-label="Open menu">
    <span></span><span></span><span></span>
  </button>

</nav>
</div>


<!-- =========================
     GLASS BUILDING FLOORS MENU
========================= -->

<div class="menu-overlay" id="menuOverlay">

  <div class="menu-stack" id="menuStack">

    <div class="menu-floor">
      <div class="floor-label">// 01</div>
      <a href="#home" class="menu-link">Home</a>
    </div>

    <div class="menu-floor">
      <div class="floor-label">// 02</div>
      <a href="#about" class="menu-link">About</a>
    </div>

    <div class="menu-floor">
      <div class="floor-label">// 03</div>
      <a href="#skills" class="menu-link">Skills</a>
    </div>

    <div class="menu-floor">
      <div class="floor-label">// 04</div>
      <a href="#projects" class="menu-link">Projects</a>
    </div>

    <div class="menu-floor">
      <div class="floor-label">// 05</div>
      <a href="#services" class="menu-link">Services</a>
    </div>

    <div class="menu-floor">
      <div class="floor-label">// 06</div>
      <a href="#contact" class="menu-link">Contact</a>
    </div>

  </div>

</div>


<main>

<!-- =========================
     HERO
========================= -->

<section class="hero container" id="home">

  <div class="hero-content reveal">

    <div class="eyebrow">
      Web Developer · Web Designer · Freelancer
    </div>

    <h1>
      Building digital
      <em>experiences.</em>
    </h1>

    <p class="hero-text">
      I design and build modern digital experiences that combine
      thoughtful interfaces, clean code, intelligent interactions
      and real-world functionality.
    </p>

    <div class="hero-actions">

      <a href="#projects" class="btn btn-primary">
        View My Work
      </a>

      <a href="#contact" class="btn btn-ghost">
        Let's Work Together
      </a>

    </div>

  </div>


  <!-- HERO GLASS PROFILE CARD -->

  <div class="hero-card glass-strong reveal">

    <div class="card-top">

      <span class="term-dots">
        <i></i><i></i><i></i>
      </span>

      <span class="term-file">riyad@tr:~/profile.json</span>

      <span class="status">
        <i class="status-dot"></i>
        Available
      </span>

    </div>


    <!-- PROFILE PHOTO -->

    <div class="profile-area">

      <div class="profile-glass">

        <img
          src="https://i.postimg.cc/V6RVKG1F/uk1h6g.jpg"
          alt="Tahsinullah Riyad">

      </div>

    </div>


    <div class="profile-info">

      <h2>
        Tahsinullah <em>Riyad</em>
      </h2>

      <div class="profile-role">
        Web Developer · Designer · Freelancer
      </div>

    </div>


    <!-- DATA RING -->

    <div class="ring-area">

      <svg
        class="ring-svg"
        width="165"
        height="165"
        viewBox="0 0 160 160">

        <circle
          class="ring-track"
          cx="80"
          cy="80"
          r="65"
          fill="none"
          stroke-width="8"/>

        <circle
          class="ring-fill"
          cx="80"
          cy="80"
          r="65"
          fill="none"
          stroke-width="8"/>

      </svg>

      <div class="ring-center">

        <div class="ring-number">
          92%
        </div>

        <div class="ring-label">
          Project Focus
        </div>

      </div>

    </div>


    <!-- MINI STATS -->

    <div class="stats">

      <div class="stat glass-light">

        <div class="stat-label">
          Projects
        </div>

        <div class="stat-value">
          20+
        </div>

        <div class="stat-change">
          Growing
        </div>

      </div>


      <div class="stat glass-light">

        <div class="stat-label">
          Core Stack
        </div>

        <div class="stat-value">
          Web
        </div>

        <div class="stat-change">
          Full Focus
        </div>

      </div>

    </div>

  </div>

</section>


<!-- =========================
     ABOUT
========================= -->

<section id="about">

<div class="container">

  <div class="section-head reveal">

    <div class="eyebrow">
      About Me
    </div>

    <h2 class="section-title">
      Turning ideas into
      <em>digital reality.</em>
    </h2>

    <p class="section-subtitle">
      I focus on creating interfaces that feel simple,
      intentional and enjoyable while keeping the underlying
      technology clean and maintainable.
    </p>

  </div>


  <div class="about-grid">

    <div class="about-card glass-strong reveal">

      <h3 class="section-title" style="font-size:30px;">
        Design meets engineering.
      </h3>

      <p>
        My approach combines visual design with practical
        development. Every interface is designed with hierarchy,
        responsiveness, accessibility and performance in mind.
      </p>

      <p>
        From landing pages to complete web platforms, I enjoy
        transforming concepts into polished digital products.
      </p>

      <div class="about-highlight">
        Clean design. Thoughtful interaction. Reliable code.
      </div>

    </div>


    <div class="about-card glass-mid reveal">

      <div class="info-list">

        <div class="info-item">
          <span>Name</span>
          <strong>Tahsinullah Riyad</strong>
        </div>

        <div class="info-item">
          <span>Role</span>
          <strong>Web Developer</strong>
        </div>

        <div class="info-item">
          <span>Specialty</span>
          <strong>Modern Web</strong>
        </div>

        <div class="info-item">
          <span>Frontend</span>
          <strong>HTML · CSS · JS</strong>
        </div>

        <div class="info-item">
          <span>Approach</span>
          <strong>Design + Code</strong>
        </div>

        <div class="info-item">
          <span>Availability</span>
          <strong>Freelance</strong>
        </div>

      </div>

    </div>

  </div>

</div>

</section>


<!-- =========================
     SKILLS
========================= -->

<section id="skills">

<div class="container">

  <div class="section-head reveal">

    <div class="eyebrow">
      Skills & Expertise
    </div>

    <h2 class="section-title">
      Built around
      <em>real capabilities.</em>
    </h2>

    <p class="section-subtitle">
      A focused toolkit for creating responsive,
      functional and visually refined digital products.
    </p>

  </div>


  <div class="bento">

    <div class="bento-card glass-strong tall reveal">

      <div class="card-tag">
        Development
      </div>

      <h3>
        Frontend Craft
      </h3>

      <p>
        Creating responsive interfaces with clean structure,
        thoughtful interactions and scalable components.
      </p>

      <div class="bar-chart">

        <div class="bar" style="--height:72%;"></div>
        <div class="bar" style="--height:91%;"></div>
        <div class="bar" style="--height:82%;"></div>
        <div class="bar" style="--height:68%;"></div>
        <div class="bar" style="--height:88%;"></div>
        <div class="bar" style="--height:76%;"></div>
        <div class="bar" style="--height:95%;"></div>

      </div>

      <div class="project-tech">

        <span class="tech">HTML5</span>
        <span class="tech">CSS3</span>
        <span class="tech">JavaScript</span>
        <span class="tech">Responsive UI</span>

      </div>

    </div>


    <div class="bento-card glass-mid reveal">

      <div class="card-tag">
        Expertise
      </div>

      <h3>
        Core Skills
      </h3>

      <div class="goal">

        <div class="goal-row">
          <span>UI Development</span>
          <span>90%</span>
        </div>

        <div class="goal-track">
          <div class="goal-fill" style="--progress:90%;"></div>
        </div>

      </div>

      <div class="goal">

        <div class="goal-row">
          <span>Web Design</span>
          <span>88%</span>
        </div>

        <div class="goal-track">
          <div class="goal-fill" style="--progress:88%;"></div>
        </div>

      </div>

      <div class="goal">

        <div class="goal-row">
          <span>JavaScript</span>
          <span>82%</span>
        </div>

        <div class="goal-track">
          <div class="goal-fill" style="--progress:82%;"></div>
        </div>

      </div>

    </div>


    <div class="bento-card glass-light reveal">

      <div class="card-tag">
        Workflow
      </div>

      <h3>
        Quality Checks
      </h3>

      <div class="alert glass-light">

        <div class="alert-icon">
          ✓
        </div>

        <div>
          <strong>Responsive</strong>
          <small>Mobile-first layouts</small>
        </div>

      </div>

      <div class="alert glass-light">

        <div class="alert-icon">
          ✓
        </div>

        <div>
          <strong>Accessible</strong>
          <small>Clear interaction patterns</small>
        </div>

      </div>

    </div>


    <div class="bento-card glass-mid wide reveal">

      <div class="card-tag">
        Philosophy
      </div>

      <h3>
        Less noise. More intention.
      </h3>

      <p>
        I believe premium interfaces don't need excessive effects.
        Strong typography, balanced spacing, meaningful motion and
        clear hierarchy create a better experience.
      </p>

    </div>

  </div>

</div>

</section>


<!-- =========================
     PROJECTS
========================= -->

<section id="projects">

<div class="container">

  <div class="section-head reveal">

    <div class="eyebrow">
      Selected Work
    </div>

    <h2 class="section-title">
      Projects with
      <em>purpose.</em>
    </h2>

    <p class="section-subtitle">
      A selection of digital products and web experiences.
    </p>

  </div>


  <div class="projects">

    <article class="project glass-strong reveal">

      <div class="project-number">
        01 / EDUCATION
      </div>

      <h3>
        চার দেয়ালের পাঠশালা
      </h3>

      <p>
        A modern Bengali e-learning platform concept designed
        for students with courses, notices, dashboards and
        structured learning experiences.
      </p>

      <div class="project-tech">
        <span class="tech">HTML</span>
        <span class="tech">CSS</span>
        <span class="tech">JavaScript</span>
        <span class="tech">UI/UX</span>
      </div>

    </article>


    <article class="project glass-mid reveal">

      <div class="project-number">
        02 / SPORTS
      </div>

      <h3>
        TR SPORTS
      </h3>

      <p>
        A premium sports platform concept focused on football
        events, tournament branding, schedules and digital
        experiences.
      </p>

      <div class="project-tech">
        <span class="tech">Web Design</span>
        <span class="tech">Animation</span>
        <span class="tech">Branding</span>
      </div>

    </article>


    <article class="project glass-mid reveal">

      <div class="project-number">
        03 / AI
      </div>

      <h3>
        TR.AI
      </h3>

      <p>
        An AI-focused digital product concept exploring modern
        interfaces, intelligent tools and conversational
        experiences.
      </p>

      <div class="project-tech">
        <span class="tech">AI</span>
        <span class="tech">JavaScript</span>
        <span class="tech">UI/UX</span>
      </div>

    </article>


    <article class="project glass-light reveal">

      <div class="project-number">
        04 / SECURITY
      </div>

      <h3>
        TR.HACKER
      </h3>

      <p>
        A cybersecurity-themed digital interface concept
        focused on security awareness, tools and modern
        technology experiences.
      </p>

      <div class="project-tech">
        <span class="tech">Cybersecurity</span>
        <span class="tech">Web</span>
        <span class="tech">UI</span>
      </div>

    </article>

  </div>

</div>

</section>


<!-- =========================
     SERVICES
========================= -->

<section id="services">

<div class="container">

  <div class="section-head reveal">

    <div class="eyebrow">
      Services
    </div>

    <h2 class="section-title">
      What I can
      <em>build.</em>
    </h2>

  </div>


  <div class="services">

    <div class="service glass-strong reveal">

      <div class="service-icon">
        01
      </div>

      <h3>
        Web Development
      </h3>

      <p>
        Responsive and functional websites built with clean
        frontend architecture and modern interaction patterns.
      </p>

    </div>


    <div class="service glass-mid reveal">

      <div class="service-icon">
        02
      </div>

      <h3>
        UI / UX Design
      </h3>

      <p>
        Elegant interfaces with strong visual hierarchy,
        usability and premium digital product aesthetics.
      </p>

    </div>


    <div class="service glass-light reveal">

      <div class="service-icon">
        03
      </div>

      <h3>
        Landing Pages
      </h3>

      <p>
        High-quality landing pages designed to communicate
        products, brands and ideas clearly.
      </p>

    </div>

  </div>

</div>

</section>


<!-- =========================
     JOURNEY
========================= -->

<section>

<div class="container">

  <div class="section-head reveal">

    <div class="eyebrow">
      Journey
    </div>

    <h2 class="section-title">
      Always learning.
      <em>Always building.</em>
    </h2>

  </div>


  <div class="timeline">

    <div class="timeline-item reveal">

      <div class="timeline-dot"></div>

      <div class="timeline-date">
        Foundation
      </div>

      <h3>
        Started with the Web
      </h3>

      <p>
        Exploring HTML, CSS and JavaScript while learning how
        interfaces are structured and brought to life.
      </p>

    </div>


    <div class="timeline-item reveal">

      <div class="timeline-dot"></div>

      <div class="timeline-date">
        Growth
      </div>

      <h3>
        Design + Development
      </h3>

      <p>
        Combining frontend development with UI/UX principles
        to create more polished and useful experiences.
      </p>

    </div>


    <div class="timeline-item reveal">

      <div class="timeline-dot"></div>

      <div class="timeline-date">
        Now
      </div>

      <h3>
        Building Digital Products
      </h3>

      <p>
        Working toward complete web products, AI-powered
        experiences and professional freelance projects.
      </p>

    </div>

  </div>

</div>

</section>


<!-- =========================
     CONTACT
========================= -->

<section id="contact">

<div class="container">

  <div class="contact-grid">

    <div class="cta glass-strong reveal">

      <div class="eyebrow">
        Let's Connect
      </div>

      <h2>
        Have an idea?
        <em>Let's build it.</em>
      </h2>

      <p>
        Whether you need a portfolio, landing page, web platform
        or a fresh digital experience, let's turn your idea into
        something real.
      </p>

      <a
        href="info@tahsinullahriyad.world"
        class="btn btn-primary">
        Start a Conversation
      </a>

    </div>


    <!-- SOCIAL / CONTACT CARD -->

    <div class="contact-card glass-mid reveal">

      <h3>
        Find me online.
      </h3>

      <div class="contact-list">

        <a
          href="info@tahsinullahriyad.world"
          class="contact-link">

          <span class="contact-icon">
            @
          </span>

          <span>
            Email
          </span>

        </a>


        <a
          href="https://github.com/tahsinullahriyad"
          target="_blank"
          rel="noopener"
          class="contact-link">

          <span class="contact-icon">
            GH
          </span>

          <span>
            GitHub
          </span>

        </a>


        <a
          href="https://www.linkedin.com/in/tahsinullah-riyad-b16035304"
          target="_blank"
          rel="noopener"
          class="contact-link">

          <span class="contact-icon">
            IN
          </span>

          <span>
            LinkedIn
          </span>

        </a>


        <a
          href="https://www.facebook.com/tahsinullah.riyad.tr"
          target="_blank"
          rel="noopener"
          class="contact-link">

          <span class="contact-icon">
            FB
          </span>

          <span>
            Facebook
          </span>

        </a>


        <a
          href="https://www.instagram.com/tahsinullah.riyad"
          target="_blank"
          rel="noopener"
          class="contact-link">

          <span class="contact-icon">
            IG
          </span>

          <span>
            Instagram
          </span>

        </a>


        <a
          href="https://wa.me/qr/E44HZE4NNWUSF1"
          target="_blank"
          rel="noopener"
          class="contact-link">

          <span class="contact-icon">
            WA
          </span>

          <span>
            WhatsApp
          </span>

        </a>


        <a
          href="https://x.com/tahsinullar2k9"
          target="_blank"
          rel="noopener"
          class="contact-link">

          <span class="contact-icon">
            X
          </span>

          <span>
            Twitter / X
          </span>

        </a>


        <a
          href="https://t.me/tahsinullahriyad_tr"
          target="_blank"
          rel="noopener"
          class="contact-link">

          <span class="contact-icon">
            TG
          </span>

          <span>
            Telegram
          </span>

        </a>


        <a
          href="https://discord.com/users/tahsinullahriyad"
          target="_blank"
          rel="noopener"
          class="contact-link">

          <span class="contact-icon">
            DC
          </span>

          <span>
            Discord
          </span>

        </a>

      </div>

    </div>

  </div>

</div>

</section>

</main>


<!-- =========================
     FOOTER
========================= -->

<footer>

<div class="container">

  <div class="footer-inner">

    <div class="footer-copy">
      © 2026 TR Portfolio · Designed & Built by Tahsinullah Riyad
    </div>


    <div class="socials">

      <a
        class="social glass-light"
        href="https://github.com/tahsinullahriyad"
        target="_blank"
        rel="noopener"
        aria-label="GitHub">
        GH
      </a>

      <a
        class="social glass-light"
        href="https://www.linkedin.com/in/tahsinullah-riyad-b16035304"
        target="_blank"
        rel="noopener"
        aria-label="LinkedIn">
        IN
      </a>

      <a
        class="social glass-light"
        href="https://www.facebook.com/tahsinullah.riyad.tr"
        target="_blank"
        rel="noopener"
        aria-label="Facebook">
        FB
      </a>

      <a
        class="social glass-light"
        href="https://www.instagram.com/tahsinullah.riyad"
        target="_blank"
        rel="noopener"
        aria-label="Instagram">
        IG
      </a>

      <a
        class="social glass-light"
        href="https://wa.me/qr/E44HZE4NNWUSF1"
        target="_blank"
        rel="noopener"
        aria-label="WhatsApp">
        WA
      </a>

      <a
        class="social glass-light"
        href="https://x.com/tahsinullar2k9"
        target="_blank"
        rel="noopener"
        aria-label="Twitter X">
        X
      </a>

      <a
        class="social glass-light"
        href="https://t.me/tahsinullahriyad_tr"
        target="_blank"
        rel="noopener"
        aria-label="Telegram">
        TG
      </a>

      <a
        class="social glass-light"
        href="https://discord.com/users/tahsinullahriyad"
        target="_blank"
        rel="noopener"
        aria-label="Discord">
        DC
      </a>

    </div>

  </div>

</div>

</footer>


<script>

/* =========================
   MOBILE MENU — Glass Building Floors
========================= */

const menuBtn = document.getElementById("menuBtn");
const menuOverlay = document.getElementById("menuOverlay");
let isClosing = false;
let closeTimeout = null;

function openMenu(){
  if(isClosing) return;
  clearTimeout(closeTimeout);
  menuOverlay.classList.remove("closing");
  menuBtn.classList.add("open");
  menuOverlay.classList.add("open");
  document.body.style.overflow = "hidden";
}

function closeMenu(){
  if(!menuOverlay.classList.contains("open") || isClosing) return;

  isClosing = true;
  menuBtn.classList.remove("open");
  menuOverlay.classList.add("closing");

  // wait for rain-out animation to finish, then fully hide
  closeTimeout = setTimeout(() => {
    menuOverlay.classList.remove("open", "closing");
    document.body.style.overflow = "";
    isClosing = false;
  }, 780); // slightly longer than longest delay + duration
}

menuBtn.addEventListener("click", () => {
  if(menuOverlay.classList.contains("open") && !isClosing){
    closeMenu();
  } else if(!isClosing){
    openMenu();
  }
});

document.querySelectorAll(".menu-link").forEach(link => {
  link.addEventListener("click", closeMenu);
});

document.addEventListener("keydown", e => {
  if(e.key === "Escape") closeMenu();
});

// click outside the stack also closes
menuOverlay.addEventListener("click", e => {
  if(e.target === menuOverlay) closeMenu();
});


/* =========================
   SCROLL REVEAL
========================= */

const revealObserver = new IntersectionObserver(
  entries => {

    entries.forEach(entry => {

      if(entry.isIntersecting){

        entry.target.classList.add("show");

        revealObserver.unobserve(entry.target);

      }

    });

  },
  {
    threshold:.12
  }
);


document.querySelectorAll(".reveal").forEach(el => {
  revealObserver.observe(el);
});


/* =========================
   ACTIVE NAVIGATION
========================= */

const sections = document.querySelectorAll("section[id]");
const navItems = document.querySelectorAll(".menu-link");


const navObserver = new IntersectionObserver(
  entries => {

    entries.forEach(entry => {

      if(entry.isIntersecting){

        navItems.forEach(item => {

          item.classList.remove("active");

          if(
            item.getAttribute("href") ===
            "#" + entry.target.id
          ){

            item.classList.add("active");

          }

        });

      }

    });

  },
  {
    threshold:.35
  }
);


sections.forEach(section => {
  navObserver.observe(section);
});


/* =========================
   TYPEWRITER ON SCROLL
========================= */

const reduceMotion = window.matchMedia("(prefers-reduced-motion: reduce)").matches;

function buildTypingSteps(el){

  const originalNodes = Array.from(el.childNodes).map(n => n.cloneNode(true));
  el.innerHTML = "";
  const steps = [];

  function walk(node, container){

    if(node.nodeType === 3){

      const text = node.textContent.replace(/\s+/g, " ");

      for(const ch of text){
        steps.push(() => {
          container.appendChild(document.createTextNode(ch));
          return container;
        });
      }

    } else if(node.nodeType === 1){

      const clone = document.createElement(node.tagName);

      Array.from(node.attributes || []).forEach(attr => {
        clone.setAttribute(attr.name, attr.value);
      });

      steps.push(() => {
        container.appendChild(clone);
        return clone;
      });

      Array.from(node.childNodes).forEach(child => walk(child, clone));

    }

  }

  originalNodes.forEach(n => walk(n, el));

  return steps;

}

function startTyping(el){

  const steps = buildTypingSteps(el);

  const cursor = document.createElement("span");
  cursor.className = "type-cursor";
  cursor.textContent = "▍";

  let i = 0;

  function tick(){

    if(cursor.parentNode){
      cursor.parentNode.removeChild(cursor);
    }

    if(i >= steps.length){
      return;
    }

    const activeContainer = steps[i]();
    activeContainer.appendChild(cursor);
    i++;

    setTimeout(tick, 14 + Math.random() * 20);

  }

  tick();

}

if(!reduceMotion){

  const typeObserver = new IntersectionObserver(
    entries => {

      entries.forEach(entry => {

        if(entry.isIntersecting){
          startTyping(entry.target);
          typeObserver.unobserve(entry.target);
        }

      });

    },
    {
      threshold:.3
    }
  );

  document
    .querySelectorAll(
      "main h1, main h2, main h3, main p, main .eyebrow, main .about-highlight, main .card-tag, main .project-number, main .timeline-date, footer .footer-copy"
    )
    .forEach(el => {
      typeObserver.observe(el);
    });

}

</script>

</body>
</html>
