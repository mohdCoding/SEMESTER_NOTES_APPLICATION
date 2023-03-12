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
      /* Basic styling for registration form */
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
      
      .register {
        margin:50px auto;
      }
    </style>
  </head>
  <body>
    <nav>
      <a href="./index.jsp">Home</a>
      <a href="./staff-login.jsp">Login</a>
    </nav>
    <form class="register" action="StaffRegister" method="post">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>

      <button type="submit">Register</button>
    </form>
  </body>
</html>
