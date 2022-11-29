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

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

section {
    padding: 50px 0;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
 .container {
    max-width: 1044px;
    margin: 0 auto;
    padding: 0 20px;
}
 .carousel {
    display: block;
    text-align: left;
    position: relative;
    margin-bottom: 22px;
}
 .carousel > input {
    clip: rect(1px, 1px, 1px, 1px);
    clip-path: inset(50%);
    height: 1px;
    width: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
}
 .carousel > input:nth-of-type(6):checked ~ .carousel__slides .carousel__slide:first-of-type {
    margin-left: -500%;
}
 .carousel > input:nth-of-type(5):checked ~ .carousel__slides .carousel__slide:first-of-type {
    margin-left: -400%;
}
 .carousel > input:nth-of-type(4):checked ~ .carousel__slides .carousel__slide:first-of-type {
    margin-left: -300%;
}
 .carousel > input:nth-of-type(3):checked ~ .carousel__slides .carousel__slide:first-of-type {
    margin-left: -200%;
}
 .carousel > input:nth-of-type(2):checked ~ .carousel__slides .carousel__slide:first-of-type {
    margin-left: -100%;
}
 .carousel > input:nth-of-type(1):checked ~ .carousel__slides .carousel__slide:first-of-type {
    margin-left: 0%;
}
 .carousel > input:nth-of-type(1):checked ~ .carousel__thumbnails li:nth-of-type(1) {
    box-shadow: 0px 0px 0px 5px rgba(0, 0, 255, 0.5);
}
 .carousel > input:nth-of-type(2):checked ~ .carousel__thumbnails li:nth-of-type(2) {
    box-shadow: 0px 0px 0px 5px rgba(0, 0, 255, 0.5);
}
 .carousel > input:nth-of-type(3):checked ~ .carousel__thumbnails li:nth-of-type(3) {
    box-shadow: 0px 0px 0px 5px rgba(0, 0, 255, 0.5);
}
 .carousel > input:nth-of-type(4):checked ~ .carousel__thumbnails li:nth-of-type(4) {
    box-shadow: 0px 0px 0px 5px rgba(0, 0, 255, 0.5);
}
 .carousel > input:nth-of-type(5):checked ~ .carousel__thumbnails li:nth-of-type(5) {
    box-shadow: 0px 0px 0px 5px rgba(0, 0, 255, 0.5);
}
 .carousel > input:nth-of-type(6):checked ~ .carousel__thumbnails li:nth-of-type(6) {
    box-shadow: 0px 0px 0px 5px rgba(0, 0, 255, 0.5);
}
 .carousel__slides {
    position: relative;
    z-index: 1;
    padding: 0;
    margin: 0;
    overflow: hidden;
    white-space: nowrap;
    box-sizing: border-box;
    display: flex;
}
 .carousel__slide {
    position: relative;
    display: block;
    flex: 1 0 100%;
    width: 100%;
    height: 100%;
    overflow: hidden;
    transition: all 300ms ease-out;
    vertical-align: top;
    box-sizing: border-box;
    white-space: normal;
}
 .carousel__slide figure {
    display: flex;
    margin: 0;
}
 .carousel__slide div {
    position: relative;
    width: 100%;
}
 .carousel__slide div:before {
    display: block;
    content: "";
    width: 100%;
    padding-top: 66.6666666667%;
}
 .carousel__slide div > img {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 100%;
    height: 100%;
}
 .carousel__slide img {
    display: block;
    flex: 1 1 auto;
    object-fit: cover;
}
 .carousel__slide figcaption {
    align-self: flex-end;
    padding: 20px 20px 0 20px;
    flex: 0 0 auto;
    width: 25%;
    min-width: 150px;
}
 .carousel__slide .credit {
    margin-top: 1rem;
    color: rgba(0, 0, 0, 0.5);
    display: block;
}
 .carousel__slide.scrollable {
    overflow-y: scroll;
}
 .carousel__thumbnails {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    margin: 0 -10px;
}
 .carousel__slides + .carousel__thumbnails {
    margin-top: 20px;
}
 .carousel__thumbnails li {
    flex: 1 1 auto;
    max-width: calc((100% / 6) - 20px);
    margin: 0 10px;
    transition: all 300ms ease-in-out;
}
 .carousel__thumbnails label {
    display: block;
    position: relative;
}
 .carousel__thumbnails label:before {
    display: block;
    content: "";
    width: 100%;
    padding-top: 100%;
}
 .carousel__thumbnails label > img {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 100%;
    height: 100%;
}
 .carousel__thumbnails label:hover, .carousel__thumbnails label:focus {
    cursor: pointer;
}
 .carousel__thumbnails label:hover img, .carousel__thumbnails label:focus img {
    box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.25);
    transition: all 300ms ease-in-out;
}
 .carousel__thumbnails img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
  
</style>
<title>Lazy Hotel Shops</title>
</head>
<nav>
  <a href="index.jsp">Home</a>
  <a href="rooms.jsp">Rooms</a>
  <a href="shops.jsp">Shops</a>
  <a href="contactus.jsp">Contacts</a>
  <a href="locateus.jsp">Locate Us</a>
</nav>
<body>
<br>
<br>
<br>
<br>
<section>
    <div class="container">
        <div class="carousel">
            <input type="radio" name="slides" checked="checked" id="slide-1">
            <input type="radio" name="slides" id="slide-2">
            <input type="radio" name="slides" id="slide-3">
            <input type="radio" name="slides" id="slide-4">
            <input type="radio" name="slides" id="slide-5">
            <input type="radio" name="slides" id="slide-6">
            <ul class="carousel__slides">
                <li class="carousel__slide">
                    <figure>
                        <div>
                            <img src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2hvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt="">
                        </div>
                        <figcaption>
                            Best Clothing Designer
                            <span class = "credit">Store location: #4-391</span>     
                        </figcaption>
                    </figure>
                </li>
                <li class="carousel__slide">
                    <figure>
                        <div>
                            <img src="https://images.unsplash.com/photo-1515182629504-727d7753751f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fHN0b3JlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="">
                        </div>
                        <figcaption>
                           Freshest Bread Company
							<span class = "credit">Store location: #4-112</span>     
                        </figcaption>

                    </figure>
                </li>
                <li class="carousel__slide">
                    <figure>
                        <div>
                            <img src="https://images.unsplash.com/photo-1516470930795-6ba2564824aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHN0b3JlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="">
                        </div>
                        <figcaption>
                            Local Barber Town
                            <span class = "credit">Store location: #4-791</span>                             
                        </figcaption>
                    </figure>
                </li>
                <li class="carousel__slide">
                    <figure>
                        <div>
                            <img src="https://images.unsplash.com/photo-1604242692760-2f7b0c26856d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU5fHxzdG9yZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt="">
                        </div>
                        <figcaption>
                            Exclusive Time Showcase
                            <span class = "credit">Store location: #4-889</span>                           
                        </figcaption>
                    </figure>
                </li>
                <li class="carousel__slide">
                    <figure>
                        <div>
                            <img src="https://images.unsplash.com/photo-1600093463592-8e36ae95ef56?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt="">
                        </div>
                        <figcaption>
                            Coffee and Plants
                            <span class = "credit">Store location: #5-201</span>                              
                        </figcaption>
                    </figure>
                </li>
                <li class="carousel__slide">
                    <figure>
                        <div>
                            <img src="https://images.unsplash.com/photo-1593079831268-3381b0db4a77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt="">
                        </div>
                        <figcaption>
                            Local Gym
                            <span class = "credit">Store location: #5-391</span>                               
                        </figcaption>
                    </figure>
                </li>
            </ul>    
            <ul class="carousel__thumbnails">
                <li>
                    <label for="slide-1"><img src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2hvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt=""></label>
                </li>
                <li>
                    <label for="slide-2"><img src="https://images.unsplash.com/photo-1515182629504-727d7753751f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fHN0b3JlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt=""></label>
                </li>
                <li>
                    <label for="slide-3"><img src="https://images.unsplash.com/photo-1516470930795-6ba2564824aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHN0b3JlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt=""></label>
                </li>
                <li>
                    <label for="slide-4"><img src="https://images.unsplash.com/photo-1604242692760-2f7b0c26856d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU5fHxzdG9yZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt=""></label>
                </li>
                <li>
                    <label for="slide-5"><img src="https://images.unsplash.com/photo-1600093463592-8e36ae95ef56?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt=""></label>
                </li>
                <li>
                    <label for="slide-6"><img src="https://images.unsplash.com/photo-1593079831268-3381b0db4a77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt=""></label>
                </li>
            </ul>
        </div>
    </div>
</section>
</body>
</html>