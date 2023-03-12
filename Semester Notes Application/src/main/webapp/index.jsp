<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Animated Home Page for Education Website</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
}

.container {
	position: relative;
	width: 100%;
	height: 100vh;
	overflow: hidden;
}

.video-container {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
	z-index: -1;
}

.video-container video {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -1;
}

.navbar {
  display:flex;
  
}

.navbar .navbar-lists2 {
   display:flex;
   margin-left:600px;
   margin-top:25px;
}

.navbar .navbar-lists1 #img1 {
   width:120px;
   height:60px;
}
.navbar .navbar-lists2 .list {
  list-style-type:none;
  margin-left:80px;
  border-bottom: 3px solid transparent;
}


.navbar .navbar-lists2 .list .item {
  text-decoration:none;
  color:green;
  font-style:italic;
  letter-spacing:2px;
  border:2px solid black;
  padding:10px;
  
}

.navbar .navbar-lists2 .list:hover .item {
  background-position: 100% 0;
  color: white;
  
  
  background-image: linear-gradient(to right, transparent 50%, black 50%);
  background-size: 200% 100%;
  background-position: -100% 0;
  transition: background-position 0.5s ease-in-out, white 0.5s ease-in-out;
}





</style>
</head>
<body>
 
    <div class="navbar">
      
       <ul class="navbar-lists1">
             <li class="list"><a href="#"><img src="./Images/WebsiteLogo.jpg" id="img1"/></a></li>
       </ul>
       <ul class="navbar-lists2">
          <li class="list"><a href="./student-register.jsp" class="item" id="list1">STUDENT</a></li>
          <li class="list"><a href="./staff-register.jsp" class="item" id="list1">STAFF</a></li>
          <li class="list"><a href="./admin-login.jsp" class="item" id="list1">ADMIN</a></li>
       </ul>
    </div>
	<div class="container">
		<div class="video-container">

			<video autoplay loop muted>
				<source src="./Videos/HomeVideo.mp4">
			</video>

		</div>

	</div>
</body>
</html>
