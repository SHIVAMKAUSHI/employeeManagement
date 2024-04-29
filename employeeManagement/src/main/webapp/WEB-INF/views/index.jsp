<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html lang="en" xmlns:c="http://www.w3.org/1999/xlink">
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
                <a href="${pageContext.request.contextPath}/addEmp" class="nav-link">Add Emp</a>
            </li>
        </ul>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header text-center">
                    <h3>All Emp Details</h3>
                </div>
                <table class="table">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Full Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Designation</th>
                        <th>Salary</th>
                        <th>Action</th>
                    </tr>
                    </thead>

                        <c:forEach items="${employees}" var="item">
                            <tbody>
                            <tr>
                            <td>${item.id}</td>
                            <td>${item.name}</td>
                            <td>${item.address}</td>
                            <td>${item.email}</td>
                            <td>${item.password}</td>
                            <td>${item.designation}</td>
                            <td>${item.salary}</td>
                            <td><a href="editemp/${item.id}" class="btn btn-primary btn-sm">Edit</a><a href="deleteemp/${item.id}" class="btn btn-danger btn-sm">Delete</a></td>
                            </tr>
                            </tbody>
                        </c:forEach>


                </table>
            </div>

        </div>
    </div>
</div>

</body>
</html>