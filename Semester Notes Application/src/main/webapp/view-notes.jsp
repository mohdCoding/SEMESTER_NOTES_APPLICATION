<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #fff;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
	padding: 10px 20px;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 999;
}

.logo {
	width: 100px;
	height: 100px;
}

.menu {
	display: flex;
	list-style: none;
	margin: 0;
	padding: 0;
}

.menu li {
	margin-right: 10px;
}

.menu li:last-child {
	margin-right: 0;
}

.menu a {
	display: block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	border-radius: 50%;
	background-color: #eee;
	color: #333;
	transition: background-color 0.3s ease;
}

.menu a:hover {
	background-color: #333;
	color: #fff;
}

.actions {
	display: flex;
	list-style: none;
	margin: 0;
	padding: 0;
}

.actions li {
	margin-right: 10px;
}

.actions li:last-child {
	margin-right: 0;
}

.actions a {
	display: block;
	padding: 5px 10px;
	background-color: #333;
	color: #fff;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.actions a:hover {
	background-color: #fff;
	color: #333;
}
</style>
</head>
<body>
	<nav>
		<div class="logo">
			<img src="./Images/WebsiteLogo.jpg" alt="Logo" width="100"
				height="100">
		</div>
		<ul class="menu">
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/FetchNotes?semesterNo=1">1</a></li>
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/FetchNotes?semesterNo=2">2</a></li>
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/FetchNotes?semesterNo=3">3</a></li>
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/FetchNotes?semesterNo=4">4</a></li>
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/FetchNotes?semesterNo=5">5</a></li>
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/FetchNotes?semesterNo=6">6</a></li>
		</ul>
		<ul class="actions">
			<%
			String studentLogin = (String) session.getAttribute("studentLogin");
			String adminLogin = (String) session.getAttribute("admin-login");
			String staffLogin = (String) session.getAttribute("staffLogin");
			if (studentLogin != null) {
				if (studentLogin.equalsIgnoreCase("success")) {
			%>
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/Logout?user=student">Logout</a></li>
			<%
			}
			} else if (adminLogin != null) {

			if (adminLogin.equalsIgnoreCase("Login Successfull")) {
			%>
			<li><a href="./admin-access.jsp">Previous</a></li>
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/Logout?user=admin">Logout</a></li>
			<%
			}
			} else if (staffLogin != null) {
			if (staffLogin.equalsIgnoreCase("success")) {
			%>
			<li><a
				href="http://localhost:8081/Semester_Notes_Application/Logout?user=staff">Logout</a></li>
			<%
			}
			}
			%>
		</ul>
	</nav>

	<br>
	<br>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100"
					src="https://source.unsplash.com/700x300/?quotes" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="https://source.unsplash.com/700x300/?study" alt="Second slide">
			</div>
			<div class="carousel-item">

				<img class="d-block w-100"
					src="https://source.unsplash.com/700x300/?learning"
					alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>




	<script>

let slidePosition = 0;
const slides = document.getElementsByClassName('carousel-item');
const totalSlides = slides.length;

// Add event listeners to prev and next buttons
document.getElementById('carousel-button-prev').addEventListener('click', moveToPrevSlide);
document.getElementById('carousel-button-next').addEventListener('click', moveToNextSlide);

// Set the first slide as active
slides[0].classList.add('carousel-item-visible');

// Start the automatic slide show
setInterval(function() {
  moveToNextSlide();
}, 5000);

// Function to move to the previous slide
function moveToPrevSlide() {
  if (slidePosition === 0) {
    slidePosition = totalSlides - 1;
  } else {
    slidePosition--;
  }
  updateSlideVisibility();
}

// Function to move to the next slide
function moveToNextSlide() {
  if (slidePosition === totalSlides - 1) {
    slidePosition = 0;
  } else {
    slidePosition++;
  }
  updateSlideVisibility();
}

// Function to update slide visibility
function updateSlideVisibility() {
  for (let slide of slides) {
    slide.classList.remove('carousel-item-visible');
    slide.classList.add('carousel-item-hidden');
  }
  slides[slidePosition].classList.add('carousel-item-visible');
}

</script>


</body>
</html>
