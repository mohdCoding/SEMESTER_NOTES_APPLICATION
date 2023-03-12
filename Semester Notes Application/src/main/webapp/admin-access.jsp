<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<style>
nav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: #fff;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  z-index: 999;
}

nav .container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

nav .logo img {

  width:100px;
  height:100px;
}
nav .logo {
  display: inline-block;
  font-size: 24px;
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: 2px;
  text-decoration: none;

}

nav .logo img {
  max-width: 100%;
  height: auto;
}

nav .menu-toggle {
  display: none;
  font-size: 24px;
  color: #333;
  cursor: pointer;
}

nav .menu {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
}

nav .menu li {
  margin: 0 10px;
  position: relative;
}

nav .menu li a {
  display: block;
  font-size: 16px;
  text-decoration: none;
  color: #333;
  padding: 10px;
  transition: color 0.2s ease-out;
}

nav .menu li:hover a {
  color: #FF3D00;
}

nav .menu li ul {
  display: none;
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #fff;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  padding: 10px;
}

nav .menu li:hover ul {
  display: block;
}

nav .menu li ul li {
  margin: 10px 0;
}

nav .menu li ul li a {
  font-size: 16px;
  padding: 5px 10px;
  color: #333;
  text-decoration: none;
  display: block;
}

nav .menu li ul li a:hover {
  color: #FF3D00;
}

nav .menu-toggle:hover {
  color: #FF3D00;
}

/* Style the form container */
		.form-container {
			background-color: #f2f2f2;
			padding: 20px;
			border-radius: 10px;
			animation: fadeInUp 1s ease-out;
			margin-top:30px;
		}

		/* Define the animation */
		@keyframes fadeInUp {
			from {
				opacity: 0;
				transform: translateY(20px);
			}
			to {
				opacity: 1;
				transform: translateY(0);
			}
		}

		/* Style the form inputs */
		input[type=text], input[type=file] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			border: none;
			border-bottom: 2px solid #ccc;
			transition: border-bottom-color 0.3s ease-in-out;
		}

		/* Add hover effect to the form inputs */
		input[type=text]:hover, input[type=file]:hover {
			border-bottom-color: #666;
		}

		/* Add focus effect to the form inputs */
		input[type=text]:focus, input[type=file]:focus {
			border-bottom-color: #007bff;
			outline: none;
		}

		/* Style the submit button */
		input[type=submit] {
			background-color: #007bff;
			color: #fff;
			padding: 12px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.3s ease-in-out;
		}

		/* Add hover effect to the submit button */
		input[type=submit]:hover {
			background-color: #0056b3;
		}

		/* Style the add notes button */
		.add-notes-button {
			background-color: #007bff;
			color: #fff;
			padding: 12px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.3s ease-in-out;
			animation: pulse 2s ease-in-out infinite;
		}

		/* Define the pulse animation */
		@keyframes pulse {
			0% {
				transform: scale(1);
			}
			50% {
				transform: scale(1.1);
			}
			100% {
				transform: scale(1);
			}
		}



.heading {
  margin-top:120px;
  text-align:center;
}

.message {
   background-color:blue;
   color:white;
   padding:5px;
   margin:5px;
}
</style>
</head>

<body>
<nav>
  <div class="container">
    <a href="#" class="logo"><img src="./Images/WebsiteLogo.jpg" alt="Logo"></a>
    <div class="menu-toggle"><i class="fa fa-bars"></i></div>
    <ul class="menu">
      <li><a href="./view-notes.jsp">View Notes</a></li>
      <li><a href="http://localhost:8081/Semester_Notes_Application/Logout?user=admin">Logout</a></li>
    </ul>
  </div>
</nav>

    
    
   <h1 class="heading" text-align="center" color="black">ADD THE SEMESTER NOTES</h1>

    
	<div class="form-container">
		<form action="AddNotes" method="post" enctype="multipart/form-data">
		
		

		 
		 	<%
		 	  
		 	 Boolean flag =(Boolean) request.getAttribute("flag");
		 	
		 	if(flag != null) {
		 	if(flag) {
		 	
		 	%>
		 	  <h3 class="message">RECORD ADDED SUCCESSFULLY</h3>
		 	<%
		 	} else {
		 	%>
		 	 <h3 class="message">FAILED TO ADD THE RECORD</h3>
		 	<%
		 	
		 	}
		 	request.removeAttribute("flag");
		 	}
		 	%>
			<label for="semester">Enter Semester:</label><br>
			<input type="text" id="semester" name="semester"><br>

			<label for="subject-code">Enter Subject Code:</label><br>
			<input type="text" id="subject-code" name="subject-code"><br>

			<label for="subject-name">Enter Subject Name:</label><br>
			<input type="text" id="subject-name" name="subject-name"><br>

			<label for="file-upload">Upload File:</label><br>
			<input type="file" id="file-upload" name="file-upload"><br>

			<input class="add-notes-button" type="submit" value="Add Notes">
			
		</form>
	</div>


</body>
</html>

    