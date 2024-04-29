<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html lang="en" xmlns:c="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="./base.jsp"%>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a href="" class="navbar-brand">Emp Management System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/" class="nav-link">Home</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/" class="nav-link">Add Emp</a>
            </li>
        </ul>
    </div>
</nav>
<div class="container">
    <div class="card">
        <div class="card-header bg-light text-center">
            <h1>Edit Employee</h1>
            <c:if test="${not empty msg}">
            <h3>${msg}</h3>
                <c:remove var="msg" />
            </c:if>


            <h1><c:out value="${msg}"/></h1>
        </div>
        <form action="${pageContext.request.contextPath}/createEmp" method="post" class="">
            <div class="form-group d-none">
                <label for="id">Id</label>
                <input type="text" id="id" name="id" class="form-control" value="${employee.id}">
            </div>
            <div class="form-group">
                <label for="name">Enter Full Name</label>
                <input type="text" id="name" name="name" class="form-control" value="${employee.name}">
            </div>
            <div class="form-group">
                <label for="address">Enter Address</label>
                <input type="text" id="address" name="address" class="form-control" value="${employee.address}">
            </div>
            <div class="form-group">
                <label for="email">Enter Email</label>
                <input type="text" id="email" name="email" class="form-control" value="${employee.email}">
            </div>
            <div class="form-group">
                <label for="password">Enter Password</label>
                <input type="text" id="password" name="password" class="form-control" value="${employee.password}">
            </div>
            <div class="form-group">
                <label for="designation">Enter Designation</label>
                <input type="text" id="designation" name="designation" class="form-control" value="${employee.designation}">
            </div>
            <div class="form-group">
                <label for="salary">Enter Salary</label>
                <input type="text" id="salary" name="salary" class="form-control" value="${employee.salary}">
            </div>
            <div class="text-center">
                <button class="btn btn-primary" type="submit" >Submit</button>
            </div>



        </form>
    </div>
</div>
</body>
</html>