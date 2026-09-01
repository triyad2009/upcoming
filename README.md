<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Tahsinullah Riyad — Web Developer, Web Designer and Freelancer.">
<title>TR Portfolio — Tahsinullah Riyad</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600&family=DM+Serif+Display:ital@0;1&display=swap" rel="stylesheet">

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
  font-family:"DM Sans",sans-serif;
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
  font-family:"DM Serif Display",serif;
  font-size:20px;
  white-space:nowrap;
}

.logo em{
  color:var(--violet);
}

.nav-links{
  display:flex;
  gap:4px;
}

.nav-links a{
  font-size:13.5px;
  font-weight:500;
  color:var(--muted);
  padding:7px 12px;
  border-radius:999px;
  transition:.18s ease;
}

.nav-links a:hover,
.nav-links a.active{
  color:var(--text);
  background:rgba(255,255,255,.5);
}

.menu-btn{
  display:none;
  width:38px;
  height:38px;
  border-radius:50%;
  background:rgba(255,255,255,.5);
  color:var(--text);
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
  font-size:11px;
  font-weight:600;
  letter-spacing:.1em;
  text-transform:uppercase;
  color:var(--violet);
  margin-bottom:18px;
}

.hero h1{
  font-family:"DM Serif Display",serif;
  font-size:clamp(42px,5.5vw,70px);
  line-height:1.04;
  letter-spacing:-.025em;
  font-weight:400;
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
  font-family:"DM Serif Display",serif;
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
  font-family:"DM Serif Display",serif;
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
  font-family:"DM Serif Display",serif;
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
  font-family:"DM Serif Display",serif;
  font-weight:400;
  font-size:clamp(32px,4vw,48px);
  line-height:1.12;
  letter-spacing:-.02em;
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
  font-family:"DM Serif Display",serif;
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
  font-family:"DM Serif Display",serif;
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
  font-family:"DM Serif Display",serif;
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
  font-family:"DM Serif Display",serif;
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
  font-family:"DM Serif Display",serif;
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
  font-family:"DM Serif Display",serif;
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
    position:absolute;
    top:70px;
    left:18px;
    right:18px;
    padding:12px;
    border-radius:20px;
    background:rgba(255,255,255,.72);
    backdrop-filter:blur(20px);
    border:1px solid rgba(255,255,255,.7);
    flex-direction:column;
  }

  .nav-links.open{
    display:flex;
  }

  .nav-links a{
    padding:12px;
  }

  .menu-btn{
    display:block;
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
    TR<em>.</em>
  </a>

  <div class="nav-links" id="navLinks">
    <a href="#home" class="active">Home</a>
    <a href="#about">About</a>
    <a href="#skills">Skills</a>
    <a href="#projects">Projects</a>
    <a href="#services">Services</a>
    <a href="#contact">Contact</a>
  </div>

  <button class="menu-btn" id="menuBtn" aria-label="Open menu">
    ☰
  </button>

</nav>
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

      <span>Developer Overview</span>

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
          >

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
        href="mailto:info@tahsinullahriyad.world"
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
          href="mailto:info@tahsinullahriyad.world"
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


        <!-- YouTube placeholder intentionally disabled
             because no YouTube URL was provided -->

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
   MOBILE MENU
========================= */

const menuBtn = document.getElementById("menuBtn");
const navLinks = document.getElementById("navLinks");

menuBtn.addEventListener("click", () => {
  navLinks.classList.toggle("open");
});


document.querySelectorAll(".nav-links a").forEach(link => {

  link.addEventListener("click", () => {
    navLinks.classList.remove("open");
  });

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
const navItems = document.querySelectorAll(".nav-links a");


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

</script>

</body>
</html>
