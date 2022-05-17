<%--
  Created by IntelliJ IDEA.
  User: kienroro2003
  Date: 15/05/2022
  Time: 09:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 style="text-align: center">Display all student</h1>
    <a href="/student/create">Create</a>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Class name</th>
            <th scope="col">Sex</th>
            <th scope="col">Email</th>
            <th scope="col">Phone number</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${students}" var="s">
            <tr>
                <td>${s.getId()}</td>
                <td>${s.getName()}</td>
                <td>${s.getClassName()}</td>
                <td>${s.isSex() ? "Male" : "Female"}</td>
                <td>${s.getEmail()}</td>
                <td>${s.getPhoneNumber()}</td>
                <td><a href="/student/view?id=${s.id}">View</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


</body>
</html>
