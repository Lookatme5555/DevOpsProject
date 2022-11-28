<!-- THIS PAGE MAY HAVE TO BE DELETED  -->
<!-- REQUIRES JAVASCRIPT TO CREATE MAP -->
<!-- DELETE THIS COMMENTS BEFORE SUBMISSION! -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
/* This part is the body  */
	.flex {
    display: flex;
    flex-wrap: no-wrap;
    overflow: hidden;
    background: #111;
}

 html, body, .flex {
 	height: 10%;
    width: 100%;
    background: #191D32;
}
/* Nav */
@import url("https://fonts.googleapis.com/css?family=Oswald:500");
 .thx {
    position: fixed;
    left: 50%;
    transform: translateX(-50%);
    bottom: 15px;
}
 nav {
    width: 100%;
    position: fixed;
    top: 30px;
    text-align: center;
}
 nav a {
    font-family: 'Oswald', sans-serif;
    font-weight: 500;
    text-transform: uppercase;
    text-decoration: none;
    color: #9CF6F6;
    margin: 0 15px;
    font-size: 18px;
    letter-spacing: 1px;
    position: relative;
    display: inline-block;
}
 nav a:before {
    content: '';
    position: absolute;
    width: 100%;
    height: 3px;
    background: #9CF6F6;
    top: 40%;
    animation: out 0.2s cubic-bezier(1, 0, 0.58, 0.97) 1 both;
}
 nav a:hover:before {
    animation: in 0.2s cubic-bezier(1, 0, 0.58, 0.97) 1 both;
}
 @keyframes in {
    0% {
       width: 0;
       left: 0;
       right: auto;
   }
    100% {
       left: 0;
       right: auto;
       width: 100%;
   }
}
 @keyframes out {
    0% {
       width: 100%;
       left: auto;
       right: 0;
   }
    100% {
       width: 0;
       left: auto;
       right: 0;
   }
}
 @keyframes show {
    0% {
       opacity: 0;
       transform: translateY(-10px);
   }
    100% {
       opacity: 1;
       transform: translateY(0);
   }
}
 nav a:nth-child(1) {
    animation: show 0.2s 1.1s ease 1 both;
}
 nav a:nth-child(2) {
    animation: show 0.2s 1.2s ease 1 both;
}
 nav a:nth-child(3) {
    animation: show 0.2s 1.3s ease 1 both;
}
 nav a:nth-child(4) {
    animation: show 0.2s 1.4s ease 1 both;
}
 nav a:nth-child(5) {
    animation: show 0.2s 1.5s ease 1 both;
}



.container {
  border-radius: 5px;
  background-color: #f2f2f2;

}

.map {
  width: 700px;
  height: 380px;
  margin: calc(50vh - 190px) auto;
  box-shadow: 0 0 40px -10px black;
  background: rgb(240, 240, 240);
  font-family: 'Montserrat', sans-serif;
  max-width: calc(100vw - 60px)
}

#map {
  width: 65%;
  height: 380px;
  display: inline-block
}

.map-c {
  float: right;
  width: 35%;
  height: 100%;
  padding: 25px;
  box-sizing: border-box
}

h1 {
  margin: 0;
  font-weight: normal;
  color: rgb(60, 60, 70);
  font-size: 28px
}



.det {
  font-size: 12px;
  margin-bottom: 15px
}

i {
  float: left;
  font-size: 18px !important;
  margin: 0 8px 0 0
}

@media only screen and (max-width: 720px) {
  .map {
    height: 450px;
    margin: calc(50vh - 225px) auto;
    overflow: hidden
  }
  #map {
    width: 100%;
    height: 200px;
  }
  .map-c {
    float: right;
    width: 100%;
  }
}

@media only screen and (max-width: 460px) {
  p {
    display: none
  }
  h1 {
    margin-bottom:20px
  }
  .det {
    margin-bottom: 9px
  }
 
</style>
<title>Locate Lazy Hotels</title>
</head>
<nav>
  <a href="index.jsp">Home</a>
  <a href="rooms.jsp">Rooms</a>
  <a href="shops.jsp">Restaurant & Shops</a>
  <a href="contactus.jsp">Contacts</a>
  <a href="locateus.jsp">Locate Us</a>
</nav>
<body>
<div class="map">
  <div id="map">
  	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2304.188539234005!2d103.93277596778987!3d1.
  	3450929183402296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da3d69fed56771%3A0x8bf2e2929d84a296!2sTemasek%20Polytechnic
  	!5e0!3m2!1sen!2ssg!4v1669623325866!5m2!1sen!2ssg" 
  	width="470" height="380" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
  <div class="map-c">
    <h1>Lazy Hotels</h1>
    <p>It's Right here !!</p>
    <div class="det"><i class="fa fa-map-marker"></i> 21 Tampines Ave 1, Singapore 529757</div>
    <div class="det"><i class="fa fa-phone"></i> +65 9807 6767</div>
    <div class="det"><i class="fa fa-globe"></i> http://localhost:8080</div>
  </div>
</div>
</body>
</html>