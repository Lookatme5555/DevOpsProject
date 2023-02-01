<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
/* form css */
@import url("https://fonts.googleapis.com/css?family=Spartan&display=swap");
* {
  margin: 0;
  padding: 0;
}

body {
  background: #191D32;
  width: 100vw;
  height: 100vh;
  display: grid;
  align-items: center;
  justify-items: center;
  font-size: 12pt;
  font-family: "Spartan";
  color: #9CF6F6;
}

.contact-us {
  padding: 50px 100px;
  width: 40vw;
}

label, input, textarea {
  display: block;
  width: 100%;
  font-size: 12pt;
  line-height: 24pt;
  font-family: "Spartan";
  color: #9CF6F6;
}

input {
  margin-bottom: 24pt;
}

h3 {
  font-weight: normal;
  font-size: 10pt;
  line-height: 24pt;
  font-style: italic;
  margin: 0 0 0.5em 0;
}

span {
  font-size: 8pt;
}

em {
  color: #ffa51e;
  font-weight: bold;
}

input, textarea {
  border: none;
  border-radius: 2px;
  background: #ba2c73;
  padding-left: 5px;
  outline: none;
}

input:focus, textarea:focus {
  border: 1px solid #6bd4b1;
}

textarea {
  resize: none;
}

#submitBtn {
	width: unset;
	display: block;
	margin-left: auto;
	margin-top: 1vh;
	line-height: 24pt;
	padding: 0 20px;
	border: none;
	background: #ffa51e;
	color: #ba2c73;
	letter-spacing: 2px;
	transition: 0.2s all ease-in-out;
	border-bottom: 2px solid transparent;
	outline: none;
}
#submitBtn:hover {
  background: inherit;
  color: #ffa51e;
  border-bottom: 2px solid #ffa51e;
}

::-moz-selection {
  background: rgb(255, 199, 184);
}

::selection {
  background: rgb(255, 199, 184);
}

input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus,
textarea:-webkit-autofill,
textarea:-webkit-autofill:hover,
textarea:-webkit-autofill:focus {
  border: 1px solid #6bd4b1;
  -webkit-text-fill-color: #2A293E;
  -webkit-box-shadow: 0 0 0px 1000px #f8f4e5 inset;
  -webkit-transition: background-color 5000s ease-in-out 0s;
  transition: background-color 5000s ease-in-out 0s;
}

/* stars css */
.checked{
  color: orange;
}
.rate {
	width: max-content;
	margin-right: auto;
    display: flex;
    flex-direction: row-reverse;
}
.rate:not(:checked) > input {
    display: none;
}
.rate:not(:checked) > label {
    float:right;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:1vh;
    color:#ccc;
}
.rate > input:checked ~ label {
    color: #ffc700;    
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #deb217;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #c59b08;
}

.emailLabel {
	margin-top: 1vh;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
</head>
<body>
	<div class="contact-us">
		<form action="roomServlet"  method="POST">
			<label for="roomName">ROOM NAME <em>*</em></label>
			<input id="rommName" name="roomName" required type="text">
			<label>RATING <em>*</em></label>
			<div class="rate">
				<input type="radio" id="star5" name="rate" value="5" />
				<label for="star5" title="rating"><span class="fa fa-star fa-3x"></span></label>
				<input type="radio" id="star4" name="rate" value="4" />
				<label for="star4" title="text"><span class="fa fa-star fa-3x"></span></label>
				<input type="radio" id="star3" name="rate" value="3" />
				<label for="star3" title="text"><span class="fa fa-star fa-3x"></span></label>
				<input type="radio" id="star2" name="rate" value="2" />
				<label for="star2" title="text"><span class="fa fa-star fa-3x"></span></label>
				<input type="radio" id="star1" name="rate" value="1" />
				<label for="star1" title="text"><span class="fa fa-star fa-3x"></span></label>
		   </div>
			<label for="price" class="emailLabel">PRICE <em>*</em></label>
			<input id="price" name="price" required type="number">
			<label for="img">IMAGE URL</label>
			<input id="img" name="img" type="text">
			<label for="description">ROOM DESCIRPTION </label>
			<textarea id="description" name="description" required rows="4"></textarea>
			<input type="submit" id="submitBtn" value="SUBMIT">
		</form>
	</div>
</body>
</html>