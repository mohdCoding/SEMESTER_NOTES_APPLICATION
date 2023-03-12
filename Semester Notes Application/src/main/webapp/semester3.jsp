<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Semester 3</title>
<style>
.notes-container {
  margin-top:100px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.note-item {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 300px;
  height: 200px;
  margin: 16px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease-in-out;
  animation: shake 0.5s ease forwards;
}



@keyframes shake {
  0% { transform: translateX(0); }
  25% { transform: translateX(-10px); }
  50% { transform: translateX(0); }
  75% { transform: translateX(10px); }
  100% { transform: translateX(0); }
}

.note-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 5px 16px rgba(0, 0, 0, 0.2);
}

.note-subject-code {
  font-size: 24px;
  font-weight: bold;
  color: #333;
  margin-top: 16px;
}

.note-subject-name {
  font-size: 16px;
  color: #666;
  margin-top: 8px;
}

.note-file {
  display: inline-block;
  font-size: 14px;
  color: #fff;
  background-color: #007bff;
  padding: 8px 16px;
  border-radius: 4px;
  text-decoration: none;
  margin-top: 16px;
  transition: all 0.3s ease-in-out;
}

.note-file:hover {
  background-color: #0069d9;
  transform: scale(1.1);
}




</style>
</head>
<body>
<c:import url="./semester-navbar.jsp"/>

<div class="notes-container">
  <c:forEach items="${notes3}" var="note">
    <div class="note-item">
      <div class="note-subject-code">${note.subjectCode}</div>
      <div class="note-subject-name">${note.subjectName}</div>
      <a href="${note.fileLocation}" target="_blank" class="note-file">Open PDF</a>
    </div>
  </c:forEach>
</div>
</body>
</html>