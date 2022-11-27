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
    height: 100%;
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
    position: absolute;
    top: 30px;
    text-align: center;
    background-color: #191D32;
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


#contactheader {
    font-size: 75px;
    text-align: center;
    animation: show 0.2s 1.6s ease 1 both;
}

#contactheaderdiv {
	text-align: center;
    color: white
    
}

#contactheaderdiv h2 {
	animation: show 0.2s 1.7s ease 1 both;
    
}


.inputform {
  position: relative;
  margin-top: 36px;
  margin-bottom: 36px;
}


.inputbar {
  position: relative;
  height: 1px;
  background: black;
  display: block;
  border-color:black;
  
}

@keyframes rainbowborderbar {
  0% {background: hsl(0, 100%, 50%);}
  100% {background: hsl(255, 100%, 50%);}
}

.inputbar::after {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  animation: rainbowborderbar 5s infinite alternate;  
  height: 2px;
  display: block;
  transform: rotateY(90deg);
  transition: transform 0.28s ease;
  will-change: transform;
}

.labels {
  position: absolute;
  top: 12px;
  line-height: 24px;
  pointer-events: none;
  padding-left: 2px;
  z-index: 1;
  font-size: 16px;
  font-weight: normal;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  margin: 0;
  color: #313131;
  transform: translateY(-50%);
  transform-origin: left center;
  transition: transform 0.28s ease, color 0.28s linear, opacity 0.28s linear;
  will-change: transform, color, opacity;
}

.fields {
  outline: none;
  height: 24px;
  display: block;
  background: none;
  padding: 2px 2px 1px;
  font-size: 16px;
  border: 0 solid transparent;
  line-height: 1.5;
  width: 100%;
  color: #333;
  box-shadow: none;
  opacity: 0.001;
  transition: opacity 0.28s ease;
  will-change: opacity;
}

.fields:-ms-input-placeholder {
  color: #a6a6a6;
  transform: scale(0.9);
  transform-origin: left top;
}


.fields:focus ~ .inputbar::after {
  transform: rotateY(0deg);
}

.fields:focus ~ .labels {
  color: black;
  font-size: 25px;
}

@keyframes inputfocus {
  from {background: none;}
  to {background: #DFDFDF;}
}


.fields.-hasvalue,
.fields:focus {
  opacity: 1;
  border-radius: 25px;
  animation: inputfocus 2s infinite alternate;
  
}

.fields.-hasvalue ~ .labels,
.fields:focus ~ .labels {
  transform: translateY(-100%) translateY(-0.5em) translateY(-2px) scale(0.9);
  pointer-events: auto;
}


input.fields:not(:placeholder-shown),
textarea.fields:not(:placeholder-shown) {
  opacity: 1;
}

input.fields:not(:placeholder-shown) ~ .labels,
textarea.fields:not(:placeholder-shown) ~ .labels {
  transform: translateY(-100%) translateY(-0.5em) translateY(-2px) scale(0.9);
  pointer-events: auto;
}

@keyframes rainbowborder {
  0% {border-color: hsl(0, 100%, 50%);}
  100% {border-color: hsl(255, 100%, 50%);}
}

.container {
  border-radius: 25px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 75%;
  margin: auto;
  border: 10px solid hsl(0, 100%, 50%);
  animation: rainbowborder 5s infinite alternate;
  box-shadow: 2px 2px 5px black;

}

  #submitbuttondiv {
	margin: auto;
	width: 60%;
	text-align: center;
  }
  
  
  #submitbtn {
  	width: 55%;
    height: 50px;
    font-weight: bold;
    font-size: 24px;
    background: #272727;
    color: white;
    border-style: none;
    border-radius: 25px;
    box-shadow: 0 0 10px black;
  }
  
 
  
  #submitbtn:hover{
  	animation: submitbtnhover 1s infinite alternate;
  }
  
  	@keyframes submitbtnhover {
	  from {background: #272727;}
	  to {background: #636363;}
	}
  
  

</style>
<title>Contact Us Page</title>
</head>

<body>
<nav>
  <a href="index.jsp">Home</a>
  <a href="locateus.jsp">Locate Us</a>
  <a href="rooms.jsp">Rooms</a>
  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Restaurant & Shops</a>
  <a href="contactus.jsp">Contacts</a>
</nav>

<br>
<br>
<br>
<br>
<div id="contactheaderdiv">
<p id="contactheader">Contact Us</p>
<h2>hotel@hotel.com</h2><h2>+65 6225 5744</h2>
</div>
<br>
<div class="container">
   <div class="inputform">
    <input id="fullnametxtfield" class="fields" placeholder="Please fill full name" type="input" required/>
    <div class="inputbar"></div>
    <label class="labels">Full Name</label>
  </div>
  <div class="inputform">
    <input id="emailtxtfield" class="fields" placeholder="Please fill email" type="input" required/>
    <div class="inputbar"></div>
    <label class="labels">Email</label>
  </div>
  <div class="inputform">
    <input id="subjecttxtfield" class="fields" placeholder=" " type="input" required/>
    <div class="inputbar"></div>
    <label class="labels">Subject</label>
  </div>
  <div class="inputform form-textarea">
    <textarea id="messagetxtarea" style="height: 125px;" class="fields" placeholder=" "></textarea>
    <div class="inputbar"></div>
    <label class="labels">Message</label>
  </div>
  <div id="submitbuttondiv">
	  <button id="submitbtn">Submit</button>
  </div>
</div>
</body>
</html>