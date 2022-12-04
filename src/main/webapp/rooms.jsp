<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="ISO-8859-1">
<title>Rooms</title>
<style>
body {
	margin: 0;
  	font-family: 'Poppins', sans-serif;
  	height: calc(100vh - 78px) !important;
}
 html, body, .flex {
    height: 100%;
    width: 100%;
    background: #191D32;
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
 nav a.not(.active):hover:before {
    animation: in 0.2s cubic-bezier(1, 0, 0.58, 0.97) 1 both;
}

nav a:last-child {
	float: right;
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

nav a:nth-child(6) {
    animation: show 0.2s 1.5s ease 1 both;
}

nav.active {
	color: white;
}

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

h1, h2 {
  font-family: sans-serif;
  font-weight: 400;
}

.flex {
  display: flex;
}

button {
  border: none;
  background: none;
  outline: none;
  transition: 0.5s;
  cursor: pointer;
}

.primary-btn {
  padding: 15px 40px;
  background: #ba2c73;
  font-weight: bold;
  color: white !important;
  text-decoration: none;
}

.container {
  max-width: 85vw;
  margin: auto;
}

.heading, .add-room-btn {
	margin-top: 20px;
}

.rooms {
  position: relative;
  margin-top: 78px;
}

.rooms * {
	color: #ffa51e;
}

.rooms .text {
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-top: none;
  padding: 30px;
}

.rooms i {
  font-size: 12px;
  color: #d6d8d8;
  margin: 15px 0;
  margin-right: 5px;
}

.checked {
  color: #fbb234 !important;
}

.rooms p {
  margin: 20px 0;
  opacity: 0.7;
}

.rooms h3 {
  font-size: 30px;
  line-height: 20px;
  margin-left: 20px;
  font-weight: 500;
  color: #ba2c73;
}

.rooms h3 span {
  font-size: 15px;
  font-weight: 400;
  color: #ba2c73;
}

.rooms .items {
	height: 50vh;
}

.owl-carousel1 .owl-nav .owl-prev,
.owl-carousel1 .owl-nav .owl-next {
  position: absolute;
  top: -20%;
  height: 50px;
  width: 50px;
  background: #ba2c73 !important;
}

.owl-carousel1 .owl-nav .owl-prev i,
.owl-carousel1 .owl-nav .owl-next i {
  color: #fff;
}

.owl-carousel1 .owl-nav .owl-prev {
  left: 90%;
}

.owl-carousel1 .owl-nav .owl-next {
  right: 0;
}

.main-container {
	width: 270px;
	height: max-content;
	position: relative;
	margin: 0 20px;
}

.poster-container {
	width: 230px;
	position: relative;
	top: 0;
	left: 20px;
	z-index: 9999;
}

.poster {
	width: 100%;
	box-shadow: 0 5px 20px 3px rgba(0, 0, 0, 0.6);
}

.ticket-container {
	background: #191D32;
	width: 270px;
	height: max-content;
	display: flex;
	flex-direction: column;
	align-items: center;
	border-radius: 5px;
	position: absolute;
	top: 20px;
	box-shadow: 0 5px 20px 3px rgba(0, 0, 0, 0.6);
	opacity: 0;
}

.main-container:hover .ticket-container {
	opacity: 1;
	animation: bounceIn 0.6s linear;
}

@keyframes bounceIn {
	0%,
	20%,
	40%,
	60%,
	80%,
	to {
		-webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
		animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
	}
	0% {
		opacity: 0;
		-webkit-transform: scale3d(0.3, 0.3, 0.3);
		transform: scale3d(0.3, 0.3, 0.3);
	}
	20% {
		-webkit-transform: scale3d(1.03, 1.03, 1.03);
		transform: scale3d(1.03, 1.03, 1.03);
	}
	40% {
		-webkit-transform: scale3d(0.9, 0.9, 0.9);
		transform: scale3d(0.9, 0.9, 0.9);
	}
	60% {
		opacity: 1;
		-webkit-transform: scale3d(1.01, 1.01, 1.01);
		transform: scale3d(1.01, 1.01, 1.01);
	}
	80% {
		-webkit-transform: scale3d(0.97, 0.97, 0.97);
		transform: scale3d(0.97, 0.97, 0.97);
	}
	to {
		opacity: 1;
		-webkit-transform: scaleX(1);
		transform: scaleX(1);
	}
}

.ticket__content {
	width: 100%;
	margin-top: 20vh;
	text-align: center;
}

.ticket__movie-title {
	text-transform: uppercase;
	margin-bottom: 5px;
}

@keyframes expand {
	0% {
		transform: translate(-50%, -50%) scale(0);
	}
	75% {
		transform: translate(-50%, -50%) scale(1.1);
	}
	100% {
		transform: translate(-50%, -50%) scale(1);
	}
}

@keyframes contract {
	0% {
		transform: translate(-50%, -50%) scale(1);
	}
	25% {
		transform: translate(-50%, -50%) scale(1.1);
	}
	100% {
		transform: translate(-50%, -50%) scale(0);
	}
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%) scale(0);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
  z-index: 999;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form .submit-label {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px;
  cursor: pointer;
}

.login-box .submit-label:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box .submit-label span {
  position: absolute;
  display: block;
}

.login-box label span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box .submit-label span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box .submit-label span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box .submit-label span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}

.modal-background {
	background: black;
	opacity: 0;
	z-index: 995;
	width: 100vw;
	height: 100vh;
	margin: 0;
	position: absolute;
	top: 0;
	left: 0;
	display: none;
}

@keyframes appear {
	0% {
		display: none;
		opacity: 0;
	}
	1% {
		display: block;
		opacity: 0;
	}
	100% {
		display :block;
		opacity: .5;
	}
}

@keyframes disappear {
	0% {
		display :block;
		opacity: .5;
	}
	99% {
		display: block;
		opacity: 0;
	}
	100% {
		display: none;
		opacity: 0;
	}
}

.show-background {
	display: block;
	opacity: 0.5;
}

#submit {
	display: none;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<nav>
  <a href="index.jsp">Home</a>
  <a href="roomServlet" class="active">Rooms</a>
  <a href="shops.jsp">Shops</a>
  <a href="contactus.jsp">Contacts</a>
  <a href="locateus.jsp">Locate Us</a>
  <a href="verificationpage.jsp">login/sign up</a>
</nav>
<body>

 <section class="rooms">
    <div class="container top">
		<a class="primary-btn add-room-btn" href="addroom.jsp">Add a room</a>
		<div class="heading">
		  <h2>Our Rooms</h2>
		  <p>Book a room</p>
		</div>
      <div class="content mtop">
        <div class="owl-carousel owl-carousel1 owl-theme">
       	  <c:forEach var="room" items="${rooms}">
       	  	<div class="items">
	       	  	<div class="main-container">
					<div class="poster-container">
						<img src="<c:out value="${room.img}" />" class="poster" />
					</div>
					<div class="ticket-container">
						<div class="ticket__content">
							<h4 class="ticket__movie-title"><c:out value="${room.roomName}" /></h4>
							<div class="rate flex">
								<p class="ratingNo" style="display: none;"><c:out value="${room.rating}" /></p>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="button flex">
								<button class="primary-btn book-btn" value="<c:out value="${room.roomName}" />">BOOK NOW</button>
								<h3>$<c:out value="${room.price}" /> <span> <br> Per Night </span> </h3>
							</div>
						</div>
					</div>
				</div>
	          </div>
       	  </c:forEach>
        </div>
      </div>
    </div>
  </section>
  <div class="modal-background"></div>
  <div class="login-box">
	  <h2>Book a room</h2>
	  <form action="bookingServlet" method="post">
	    <div class="user-box">
	      <input type="text" name="bookerName" required>
	      <label>name</label>
	    </div>
	    <input class="hotelName" type="hidden" name="hotelName">
	    <div class="user-box">
	      <input type="text" name="checkInDate" required>
	      <label>check in date</label>
	    </div>
	    <div class="user-box">
	      <input type="text" name="checkOutDate" required>
	      <label>check out date</label>
	    </div>
	    <label class="submit-label" for="submit">
	      <span></span>
	      <span></span>
	      <span></span>
	      <span></span>
	      Submit
	    </label>
	    <input id="submit" type="submit">
	  </form>
  </div>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script src="https://kit.fontawesome.com/032d11eac3.js" crossorigin="anonymous"></script>
  <script>
    $('.owl-carousel1').owlCarousel({
      loop: true,
      margin: 40,
      nav: true,
      dots: false,
      navText: ["<i class = 'fa fa-chevron-left'></i>", "<i class = 'fa fa-chevron-right'></i>"],
      responsive: {
          0: {
            items: 1
          },
          768: {
            items: 2,
            margin: 10,
          },
          1000: {
            items: 3
          }
        }
    })
    $(document).ready(function() {
        $(".ratingNo").each(function(i, obj) {
       		$(obj).siblings().slice(0, parseInt($(obj).html())).addClass("checked")
        })
        
        $(".book-btn").click((e) => {
        	$(".hotelName").attr("value", e.target.value)
        	$(".login-box").css("animation", "expand 1s ease-in-out").css("transform", "translate(-50%, -50%) scale(1)")
        	$(".modal-background").css("animation", "appear 1s ease-in-out").addClass("show-background").click((e) => {
        		$(".modal-background").css("animation", "disappear 1s ease-in-out")
        		setTimeout(() => {
        			$(".modal-background").removeClass("show-background")
        		}, 1000);
        		$(".login-box").css("animation", "contract 1s ease-in-out").css("transform", "translate(-50%, -50%) scale(0)")
        	})
        })
    })
  </script>
</body>
</html>