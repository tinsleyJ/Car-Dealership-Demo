<%--
  Created by IntelliJ IDEA.
  User: jonat
  Date: 1/31/2022
  Time: 12:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Navbar</title>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous">
    </script>
</head>

<nav class="container navbar navbar-expand-md">
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
        <li class="nav-item">
            <a class="nav-link" href="search">Search</a>
        </li>
    </ul>
</nav>
</html>
