<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
 html, body, .flex {
    height: 100%;
    width: 100%;
    background: #191D32;
}

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

</style>
<title>Contact Us Page</title>
</head>
<nav>
  <a href="index.jsp">Home</a>
  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Locate Us</a>
  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Rooms</a>
  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Restaurant & Shops</a>
  <a href="contactus.jsp">Contacts</a>
</nav>
<body>



</body>
</html>