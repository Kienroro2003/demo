<%--
  Created by IntelliJ IDEA.
  User: kienroro2003
  Date: 16/05/2022
  Time: 00:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 style="text-align: center">Student detail</h1>
    <table border="1">
        <tr>
            <td>ID</td>
            <td>${student.getId()}</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${student.getName()}</td>
        </tr>
        <tr>
            <td>Class name</td>
            <td>${student.className}</td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>${student.sex}</td>
        </tr>
        <tr>
            <td>Phone number</td>
            <td>${student.phoneNumber}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${student.email}</td>
        </tr>
    </table>
    <a href="${pageContext.request.contextPath}/student/list">Back to list</a>
</div>
</body>
</html>
