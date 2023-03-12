<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.navbar {
	display: flex;
	background-color: aqua;
}

.navbar .navbar-lists2 {
	display: flex;
	margin-left: 1020px;
	margin-top: 25px;
}

.navbar .navbar-lists1 #img1 {
	width: 120px;
	height: 60px;
}

.navbar .navbar-lists2 .list {
	list-style-type: none;
	margin-left: 80px;
	border-bottom: 3px solid transparent;
}

.navbar .navbar-lists2 .list .item {
	text-decoration: none;
	color: green;
	font-style: italic;
	letter-spacing: 2px;
	border: 2px solid black;
	padding: 10px;
	font-size: 19px;
}

.navbar .navbar-lists2 .list:hover .item {
	background-position: 100% 0;
	color: white;
	background-image: linear-gradient(to right, transparent 50%, red 50%);
	background-size: 200% 100%;
	background-position: -100% 0;
	transition: background-position 0.5s ease-in-out, white 0.5s ease-in-out;
}

body {
	background: #F1F1F1;
	font-family: sans-serif;
}

.container {
	margin: 80px auto;
	width: 400px;
	background: #FFFFFF;
	padding: 40px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	position: relative;
	overflow: hidden;
	border-radius: 20px;
}

.container:before {
	content: '';
	position: absolute;
	top: -2px;
	left: -2px;
	right: -2px;
	bottom: -2px;
	background: #49C0E9;
	z-index: -1;
}

.form-group {
	position: relative;
	margin-bottom: 30px;
}

.form-group input {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #333;
	border: none;
	border-bottom: 2px solid #49C0E9;
	outline: none;
	background: transparent;
	z-index: 1;
}

.form-group label {
	position: absolute;
	top: 10px;
	left: 0;
	font-size: 16px;
	color: #999;
	transition: all 0.25s ease-out;
	cursor: text;
	z-index: 0;
}

.form-group input:focus+label, .form-group input:valid+label {
	top: -18px;
	font-size: 12px;
	color: #49C0E9;
}

.form-group input:focus {
	border-color: #FF3D00;
}

.btn {
	display: block;
	background: #49C0E9;
	color: #FFF;
	text-align: center;
	padding: 10px 0;
	border: none;
	width: 100%;
	font-size: 16px;
	border-radius: 20px;
	cursor: pointer;
	transition: all 0.25s ease-out;
}

.btn:hover {
	background: #FF3D00;
}

.form-group:focus-within .label {
	top: -18px;
	font-size: 12px;
	color: #49C0E9;
}

.form-group:focus-within input {
	border-color: #FF3D00;
}
</style>
</head>
<body>

	</style>
</head>
<body>
	<div class="navbar">

		<ul class="navbar-lists1">
			<li class="list"><a href="#"><img
					src="./Images/WebsiteLogo.jpg" id="img1" /></a></li>
		</ul>
		<ul class="navbar-lists2">
			<li class="list"><a href="./index.jsp" class="item" id="list1">Home</a></li>
		</ul>
	</div>


 
	<div class="container">
		 <h1 text-align="center">Login Form</h1>
		<br>
		<form action="AdminLogin" method="post">
			<div class="form-group">
				<input type="email" name="email" required> <label>Email</label>
			</div>
			<div class="form-group">
				<input type="password" name="password" required> <label>Password</label>
			</div>
			<button class="btn">Login</button>
		</form>
	</div>

</body>
</html>