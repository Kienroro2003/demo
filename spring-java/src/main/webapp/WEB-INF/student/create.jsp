<%--
  Created by IntelliJ IDEA.
  User: kienroro2003
  Date: 16/05/2022
  Time: 00:39
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Create a student</h1>
    <a href="${pageContext.request.contextPath}/student/list">Back to list</a>
    <form:form method="post" action="${pageContext.request.contextPath}/student/create" modelAttribute="student">
        <div class="form-group">
            <label for="id">Id</label>
            <form:input type="text" class="form-control" id="id"
                   placeholder="Enter id" path="id"/>
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <form:input type="text" class="form-control" id="name"
                   placeholder="Enter id" path="name"/>
        </div>
        <div class="form-group">
            <label >Class name</label>
<%--            <form:select class="form-control" id="class" path="className" items="${classNames}"/>--%>
            <form:radiobuttons path="className" items="${classNames}" />
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <form:input type="text" class="form-control" id="email"
                        placeholder="Enter id" path="email"/>
        </div>
        <div class="form-group">
            <label for="sex">Sex</label>
            <form:radiobutton class="form-control" id="sex"
                        placeholder="Enter id" path="sex" value="true"/>Nam
            <form:radiobutton class="form-control" id="sex"
                              placeholder="Enter id" path="sex" value="false"/>Nu
        </div>
        <div class="form-group">
            <label for="phone">Phone number</label>
            <form:input type="text" class="form-control" id="phone"
                        placeholder="Enter id" path="phoneNumber"/>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>
</body>
</html>
