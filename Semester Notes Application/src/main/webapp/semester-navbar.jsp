<!DOCTYPE html>
<html>
<head>
<style>
/* Navbar styles */
.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #333;
	color: #fff;
	height: 80px;
	padding: 0 20px;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 999;
}

.navbar-logo {
	display: flex;
	align-items: center;
	font-size: 24px;
	font-weight: bold;
	text-transform: uppercase;
}

.navbar-list {
	display: flex;
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.navbar-list li {
	margin-left: 20px;
	cursor: pointer;
	transition: all 0.2s ease-in-out;
}

.navbar-list li:hover {
	transform: translateY(-3px);
}

.navbar-logout-btn {
	background-color: transparent;
	border: none;
	color: #fff;
	cursor: pointer;
	font-size: 16px;
	transition: all 0.2s ease-in-out;
}

.navbar-logout-btn:hover {
	color: #f00;
	text-decoration: underline;
}
</style>
</head>

<body>
	<nav class="navbar">
		<div class="navbar-logo">
			<img src="./Images/WebsiteLogo.jpg" alt="Logo" width="100"
				height="60">
		</div>
		<ul class="navbar-list">
			<%
			String studentLogin = (String) session.getAttribute("studentLogin");
			String adminLogin = (String) session.getAttribute("admin-login");
			String staffLogin = (String) session.getAttribute("staffLogin");
			
			if (studentLogin != null) {
				if (studentLogin.equalsIgnoreCase("success")) {
			%>
			<li><a href="http://localhost:8081/Semester_Notes_Application/Logout?user=student">Logout</a></li>
			<%
			}
			} else if(adminLogin != null) {
				 
				if(adminLogin.equalsIgnoreCase("Login Successfull")) {
			%>
			<li><a href="./view-notes.jsp">Previous</a></li>
			<li><a href="http://localhost:8081/Semester_Notes_Application/Logout?user=admin">Logout</a></li>
			<%
				}
			} else if(staffLogin != null) {
				if(staffLogin.equalsIgnoreCase("success")) {
			%>
			<li><a href="http://localhost:8081/Semester_Notes_Application/Logout?user=staff">Logout</a></li>
			<%
				}
				}
			%>
		</ul>
	</nav>
</body>
</html>
