<!DOCTYPE html>
<html>
  <head>
    <title>My Website</title>
    <style>
      /* Basic styling for navbar */
      nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px;
        background-color: #333;
        color: #fff;
      }
      nav a {
        color: #fff;
        text-decoration: none;
        margin-right: 10px;
        transition: all 0.3s ease;
      }
      nav a:hover {
        transform: scale(1.1);
      }
      /* Basic styling for login form */
      form {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        margin-top: 20px;
        max-width: 500px;
        background-color: #f5f5f5;
        box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
      }
      label {
        font-weight: bold;
        margin-bottom: 5px;
      }
      input {
        padding: 5px;
        margin-bottom: 10px;
        width: 100%;
        border-radius: 5px;
        border: 1px solid #ccc;
        transition: all 0.3s ease;
      }
      input:focus {
        border-color: #333;
        box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
      }
      button {
        padding: 10px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: all 0.3s ease;
      }
      button:hover {
        background-color: #555;
        transform: translateY(-2px);
        box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
      }
      
      .staff-login{
         margin:55px auto;
      }
      .message {
        background-color:blue;
        color:white;
      }
    </style>
  </head>
  <body>
    <nav>
      <a href="./index.jsp">Home</a>
      <a href="./staff-register.jsp" class="register">Register</a>
    </nav>
    <form class="staff-login" action="StaffLogin" method="post">
     <%
       String message =(String) session.getAttribute("staffLoginFailure");
     
       if(message != null) {
     %>
      <h3 class="message"><%= message %></h3>
      <%
       }
      %>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>

      <button type="submit">Login</button>
    </form>
  </body>
</html>
