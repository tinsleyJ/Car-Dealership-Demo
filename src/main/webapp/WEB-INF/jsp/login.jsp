<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

</head>
<body class="container">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>
<nav class="navbar navbar-expand-md">
    <a class="navbar-brand" href="index">Car Dealership</a>
    <button class="navbar-toggler navbar-dark" type="button" data-toggle="collapse" data-target="#main-navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="add-vehicle">Add Vehicle</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="vehicle-list">Vehicle List</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="register">Register</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="login">Log In</a>
        </li>
    </ul>
</nav>
<form:form name="submitForm" method="POST">
    <div>
        <table>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-sm">Username</span>
                    <input type="text" class="form-control" aria-label="Sizing example input"
                           aria-describedby="inputGroup-sizing-sm">

            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputGroupd-sizing-sm">Password</span>
                    <input type="password" class="form-control" aria-lable="Sizing example input"
                           aria-describedby="inputGroup-sizing-sm">
            </tr>
            <tr>
                <td><input type="submit" class="btn btn-primary" value="Submit"/></td>
            </tr>
        </table>
    </div>
</form:form>
<span style="color: red">${error}</span>
</body>
</html>
