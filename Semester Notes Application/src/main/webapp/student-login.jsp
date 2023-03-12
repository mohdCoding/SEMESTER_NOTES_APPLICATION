<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Webpage</title>
    <style>
        /* Navbar styling */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Login form styling */
        .login-form {
            width: 300px;
            margin: 40px auto;
            border: 1px solid #ccc;
            padding: 10px;
        }

        .login-form input[type=text], .login-form input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .login-form button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        .login-form button:hover {
            opacity: 0.8;
        }

        /* Animations */
        .fade-in {
            animation: fadeIn ease 1s;
            -webkit-animation: fadeIn ease 1s;
            -moz-animation: fadeIn ease 1s;
            -o-animation: fadeIn ease 1s;
            -ms-animation: fadeIn ease 1s;
        }

        @keyframes fadeIn {
            0% { opacity:0; }
            100% { opacity:1; }
        }

        @-moz-keyframes fadeIn {
            0% { opacity:0; }
            100% { opacity:1; }
        }

        @-webkit-keyframes fadeIn {
            0% { opacity:0; }
            100% { opacity:1; }
        }

        @-o-keyframes fadeIn {
            0% { opacity:0; }
            100% { opacity:1; }
        }

        @-ms-keyframes fadeIn {
            0% { opacity:0; }
            100% { opacity:1; }
        }
        
        .message {
           background-color:blue;
           color:white;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="./index.jsp">Home</a>
        <a href="./student-register.jsp">Register</a>
    </div>
    <div class="login-form fade-in">
        <form action="LoginStudent" method="post">
            <%
              String message =(String) session.getAttribute("studentLoginFailure");
            
              if(message != null) {
            %>
              <h3 class="message"><%= message %></h3>
            <%
              }
              session.removeAttribute("studentLoginFailure");
            %>
            <label for="rollno">Roll No:</label><br>
            <input type="text" id="rollno" name="rollno"><br>
            <label for="dob">DOB:</label><br>
            <input type="text" id="dob" name="dob"><br><br>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
