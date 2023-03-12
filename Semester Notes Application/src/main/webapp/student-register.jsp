<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Open Sans', sans-serif;
	background-color: #F7F7F7;
}

.container {
	max-width: 500px;
	margin: 0 auto;
	padding: 40px;
	background-color: #FFF;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 20px;
	position: relative;
}

label {
	display: inline-block;
	margin-bottom: 5px;
	font-weight: 600;
}

input {
	width: 100%;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.05);
	font-size: 16px;
}

input:focus {
	outline: none;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.button {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 4px;
	background-color: #FF5252;
	color: #FFF;
	font-size: 16px;
	font-weight: 600;
	text-transform: uppercase;
	cursor: pointer;
	transition: all 0.3s ease;
	position: relative;
	overflow: hidden;
}

.button:hover {
	background-color: #F44336;
}

.button:before {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 0px;
	height: 0px;
	background-color: rgba(255, 255, 255, 0.5);
	border-radius: 50%;
	transition: all 0.5s ease;
	z-index: -1;
}

.button:hover:before {
	width: 200%;
	height: 200%;
}

.success-message {
	position: absolute;
	top: 50%;
	left: 0;
	width: 100%;
	text-align: center;
	transform: translateY(-50%);
	opacity: 0;
	transition: all 0.5s ease;
}

.success-message.show {
	opacity: 1;
}

.custom {
	margin-top: 20px;
}

.navbar {
	background-color: black;
	height: 50px;
}

.navbar .lists {
	margin-left: 1100px;
	display: flex;
	list-style-type: none;
}

.navbar .lists .list {
	margin-top: 10px;
	margin-left: 40px;
}

.navbar .lists .list .item {
	text-decoration: none;
	font-size: 19px;
	background-color: red;
	color: white;
	border-radius: 5px;
	padding: 5px;
}

.navbar .lists .list .item:hover {
	background-color: blue;
	color: white;
	cursor: pointer;
}

.message {
	margin: 5px;
	background-color: blue;
	color: white;
}
</style>
</head>
<body>

	<div class="navbar">

		<ul class="lists">
			<li class="list"><a href="./index.jsp" class="item">Home</a></li>
			<li class="list"><a href="./student-login.jsp" class="item">Login</a></li>
		</ul>

	</div>
	<div class="container custom">
		<h1>Registration Form</h1>
		<form id="registration-form" action="StudentRegister" method="post">
			<c:if test="${requestScope.registerFailure ne null}">
				<h3 class="message">
					<c:out value="${requestScope.registerFailure}" />
				</h3>
				<c:remove var="registerFailure"/>
			</c:if>

			<div class="form-group">
				<label for="name">Name</label> <input type="text" id="name"
					name="name" placeholder="Enter your name">
			</div>
			<div class="form-group">
				<label for="rollno">Roll No</label> <input type="text" id="rollno"
					name="rollno" placeholder="Enter your rollno">
			</div>
			<div class="form-group">
				<label for="dob">Date of Birth</label> <input type="date" id="dob"
					name="dob">
			</div>
			<button type="submit" class="button">Submit</button>
		</form>
		<div class="success-message">Thank you for registering!</div>
	</div>

</body>
</html>

