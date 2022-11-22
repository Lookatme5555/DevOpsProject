<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
}

.secondary-btn {
  padding: 15px 40px;
  background: none;
  border: 2px solid white;
  font-weight: bold;
  color: white;
}

.container {
  max-width: 85vw;
  margin: auto;
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
  color: #fbb234;
  margin: 15px 0;
  margin-right: 5px;
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
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav>
  <a href="index.jsp">Home</a>
  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Locate Us</a>
  <a href="rooms.jsp">Rooms</a>
  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Restaurant & Shops</a>
  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Contacts</a>
</nav>
 <section class="rooms">
    <div class="container top">
      <div class="heading">
        <h2>Our Rooms</h2>
        <p>Book a room</p>
      </div>

      <div class="content mtop">
        <div class="owl-carousel owl-carousel1 owl-theme">
          <div class="items">
            <div class="image">
            	<img src="https://www.carltonhotel.sg/uploads/9/8/2/4/98249840/studio-room_19_orig.jpg" alt="Meeting Room Image">
            </div>
            <div class="text">
              <h2>Hotel Room</h2>
              <div class="rate flex">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p>Lorem ipsum dolor sit amet constur adipisicing elit sed do eiusmtem por incid.
              </p>
              <div class="button flex">
                <button class="primary-btn">BOOK NOW</button>
                <h3>$250 <span> <br> Per Night </span> </h3>
              </div>
            </div>
          </div>
          <div class="items">
            <div class="image">
            	<img src="https://www.carltonhotel.sg/uploads/9/8/2/4/98249840/studio-room_19_orig.jpg" alt="Meeting Room Image">
            </div>
            <div class="text">
              <h2>Hotel Room</h2>
              <div class="rate flex">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p>Lorem ipsum dolor sit amet constur adipisicing elit sed do eiusmtem por incid.
              </p>
              <div class="button flex">
                <button class="primary-btn">BOOK NOW</button>
                <h3>$250 <span> <br> Per Night </span> </h3>
              </div>
            </div>
          </div>
          <div class="items">
            <div class="image">
            	<img src="https://www.carltonhotel.sg/uploads/9/8/2/4/98249840/studio-room_19_orig.jpg" alt="Meeting Room Image">
            </div>
            <div class="text">
              <h2>Hotel Room</h2>
              <div class="rate flex">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p>Lorem ipsum dolor sit amet constur adipisicing elit sed do eiusmtem por incid.
              </p>
              <div class="button flex">
                <button class="primary-btn">BOOK NOW</button>
                <h3>$250 <span> <br> Per Night </span> </h3>
              </div>
            </div>
          </div>
          <div class="items">
            <div class="image">
            	<img src="https://www.carltonhotel.sg/uploads/9/8/2/4/98249840/studio-room_19_orig.jpg" alt="Meeting Room Image">
            </div>
            <div class="text">
              <h2>Hotel Room</h2>
              <div class="rate flex">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p>Lorem ipsum dolor sit amet constur adipisicing elit sed do eiusmtem por incid.
              </p>
              <div class="button flex">
                <button class="primary-btn">BOOK NOW</button>
                <h3>$250 <span> <br> Per Night </span> </h3>
              </div>
            </div>
          </div>
          <div class="items">
            <div class="image">
            	<img src="https://www.carltonhotel.sg/uploads/9/8/2/4/98249840/studio-room_19_orig.jpg" alt="Meeting Room Image">
            </div>
            <div class="text">
              <h2>Hotel Room</h2>
              <div class="rate flex">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p>Lorem ipsum dolor sit amet constur adipisicing elit sed do eiusmtem por incid.
              </p>
              <div class="button flex">
                <button class="primary-btn">BOOK NOW</button>
                <h3>$250 <span> <br> Per Night </span> </h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
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
  </script>
</body>
</html>