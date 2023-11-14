<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+Wy6pafIPl5PbN4jL/6czbo1vuZHeT0L2N" crossorigin="anonymous">
    <title>Create or Update Employee</title>
</head>
<body>

<div class="container mt-5">
    <h2>Create or Update Employee</h2>
    <form action="/employee/save" method="post">
        <input type="hidden" name="id" value="${employee.id}"/>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="${employee.name}" required>
        </div>
        <div class="form-group">
            <label for="wage">Wage:</label>
            <input type="number" class="form-control" id="wage" name="wage" value="${employee.wage}" required>
        </div>
        <button type="submit" class="btn btn-primary">Save Employee</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"
        integrity="sha384-r9aNdI3egI2/oVmGfEXFY89e1aNCBqYXeI9ZozHTnlh5XQzHqr4DF5EqWFSMz9f3"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+Wy6pafIPl5PbN4jL/6czbo1vuZHeT0L2N"
        crossorigin="anonymous"></script>

</body>
</html>