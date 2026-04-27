<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Coming Soon | Tahsinullah Riyad</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600;800&display=swap" rel="stylesheet">

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
min-height:100vh;
background:linear-gradient(135deg,#A4945B,#D1C9AB);
display:flex;
flex-direction:column;
justify-content:center;
align-items:center;
text-align:center;
padding:20px;
color:#A4945B;
overflow:hidden;
}

/* Floating Particles */
body::after{
content:"";
position:absolute;
width:100%;
height:100%;
background-image:radial-gradient(#D1C9AB 1px, transparent 1px);
background-size:40px 40px;
animation:particlesMove 20s linear infinite;
opacity:0.2;
z-index:-1;
}

@keyframes particlesMove{
0%{transform:translateY(0);}
100%{transform:translateY(-200px);}
}

/* ===== Animated Profile ===== */
.profile-wrapper{
position:relative;
width:200px;
height:200px;
margin-bottom:25px;
animation:fadeIn 2s ease;
}

.profile-wrapper::before,
.profile-wrapper::after{
content:"";
position:absolute;
inset:-10px;
border-radius:50%;
background:conic-gradient(#A4945B,#D1C9AB,#A4945B);
animation:spin 6s linear infinite;
z-index:0;
}

.profile-wrapper::after{
inset:-18px;
animation:spinReverse 8s linear infinite;
opacity:0.6;
}

@keyframes spin{
100%{transform:rotate(360deg);}
}
@keyframes spinReverse{
100%{transform:rotate(-360deg);}
}

.profile-img{
position:relative;
width:100%;
height:100%;
border-radius:50%;
overflow:hidden;
border:6px solid #D1C9AB;
z-index:1;
}

.profile-img img{
width:100%;
height:100%;
object-fit:cover;
}

/* Name Shine */
h1{
font-size:clamp(28px,6vw,50px);
letter-spacing:3px;
background:linear-gradient(90deg,#A4945B,#fff,#A4945B);
background-size:200%;
-webkit-background-clip:text;
-webkit-text-fill-color:transparent;
animation:shine 4s linear infinite;
}

@keyframes shine{
0%{background-position:-200%;}
100%{background-position:200%;}
}

h2{
margin-top:10px;
font-weight:300;
font-size:clamp(14px,4vw,22px);
animation:fadeIn 3s ease;
}

/* Countdown */
.countdown{
display:flex;
gap:12px;
margin:30px 0;
flex-wrap:nowrap;
animation:fadeIn 3s ease;
}

.time-box{
background:#D1C9AB;
color:#A4945B;
padding:14px 14px;
border-radius:12px;
min-width:70px;
box-shadow:0 0 15px rgba(164,148,91,0.6);
animation:pulse 2s infinite;
}

@keyframes pulse{
0%,100%{transform:scale(1);}
50%{transform:scale(1.05);}
}

.time-box span{
display:block;
font-size:clamp(18px,4vw,28px);
font-weight:800;
}

/* Portfolio Button */
.portfolio-btn{
margin:15px 0 25px;
animation:fadeIn 4s ease;
}

.portfolio-btn a{
position:relative;
display:inline-block;
padding:14px 45px;
font-weight:700;
text-decoration:none;
color:#A4945B;
background:linear-gradient(45deg,#D1C9AB,#A4945B);
border-radius:50px;
overflow:hidden;
box-shadow:0 0 20px rgba(164,148,91,0.7);
animation:buttonGlow 2s infinite alternate;
transition:0.4s;
}

@keyframes buttonGlow{
from{box-shadow:0 0 15px rgba(164,148,91,0.6);}
to{box-shadow:0 0 30px rgba(164,148,91,1);}
}

.portfolio-btn a:hover{
transform:scale(1.07);
}

/* Social */
.social{
display:flex;
flex-wrap:wrap;
justify-content:center;
gap:10px;
max-width:1000px;
animation:fadeIn 5s ease;
}

.social a{
text-decoration:none;
background:#A4945B;
color:#D1C9AB;
padding:6px 14px;
border-radius:20px;
font-size:12px;
transition:0.3s;
}

.social a:hover{
background:#D1C9AB;
color:#A4945B;
transform:scale(1.1);
}

/* Footer */
.footer{
margin-top:25px;
font-size:12px;
opacity:0.7;
animation:fadeIn 6s ease;
}

/* Fade In */
@keyframes fadeIn{
from{opacity:0; transform:translateY(20px);}
to{opacity:1; transform:translateY(0);}
}

@media(max-width:400px){
.profile-wrapper{width:150px;height:150px;}
.time-box{min-width:55px;padding:10px;}
.time-box span{font-size:16px;}
}
</style>
</head>

<body>

<div class="profile-wrapper">
<div class="profile-img">
<img src="https://i.postimg.cc/MpT0VJD9/IMG-20260217-124734020.jpg">
</div>
</div>

<h1>TAHSINULLAH RIYAD</h1>
<h2>Website Launching In</h2>

<div class="countdown">
<div class="time-box"><span id="days">00</span>Days</div>
<div class="time-box"><span id="hours">00</span>Hours</div>
<div class="time-box"><span id="minutes">00</span>Minutes</div>
<div class="time-box"><span id="seconds">00</span>Seconds</div>
</div>

<div class="portfolio-btn">
<a href="https://tr-com.lovable.app" target="_blank">🚀 View My Portfolio</a>
</div>

<div class="social">
<a href="https://github.com/tahsinullahriyad" target="_blank">GitHub</a>
<a href="https://www.linkedin.com/in/tahsinullah-riyad-b16035304" target="_blank">LinkedIn</a>
<a href="https://www.facebook.com/tahsinullah.riyad.tr" target="_blank">Facebook</a>
<a href="https://www.instagram.com/tahsinullah.riyad" target="_blank">Instagram</a>
<a href="https://wa.me/qr/E44HZE4NNWUSF1" target="_blank">WhatsApp</a>
<a href="https://x.com/tahsinullar2k9" target="_blank">Twitter (X)</a>
<a href="https://t.me/tahsinullahriyad_tr" target="_blank">Telegram</a>
<a href="https://discord.com/users/tahsinullahriyad" target="_blank">Discord</a>
<a href="mailto:info@tahsinullahriyad.world">Email</a>
</div>

<div class="footer">
© 2026 Tahsinullah Riyad | All Rights Reserved
</div>

<script>
// ✅ Fixed Launch Date (Will NOT reset on refresh)
const launchDate = new Date("May 27, 2026 00:00:00").getTime();

setInterval(() => {
const now = new Date().getTime();
const distance = launchDate - now;

const days = Math.floor(distance / (1000 * 60 * 60 * 24));
const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
const seconds = Math.floor((distance % (1000 * 60)) / 1000);

document.getElementById("days").innerHTML = days;
document.getElementById("hours").innerHTML = hours;
document.getElementById("minutes").innerHTML = minutes;
document.getElementById("seconds").innerHTML = seconds;

if (distance < 0) {
document.querySelector(".countdown").innerHTML = "🚀 Website is Live!";
}
}, 1000);
</script>

</body>
</html>
