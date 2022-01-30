<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Sign-up</title>
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
<div>
    <header>
        <div>
            <h3>Sign up</h3>
        </div>
    </header>

    <main role="main">
        <form:form action="/register" method="post" modelAttribute="user">
            <table>
                <tr>
                    <td class="input-group input-group-sm mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-sm" for="inputUserName">Username</span>
                        <form:input class="form-control" aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing-sm" path="username" type="text"
                                    id="inputUserName"/>
                    </td>
                </tr>
                <tr>
                    <td class="input-group input-group-sm mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-sm" for="inputPassword">Password</span>
                        <form:input class="form-control" aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing-sm" path="password" type="text"
                                    id="inputPassword"/>
                    </td>
                </tr>
                <tr>
                    <td class="input-group input-group-sm mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-sm" for="inputEmail">Email</span>
                        <form:input class="form-control" aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing-sm" path="email" type="text"
                                    id="inputEmail"/>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" class="btn btn-primary" value="Sign Me Up!"/></td>
                </tr>
            </table>
        </form:form>
    </main>
    <footer>
        <div>
            <p>

            </p>
        </div>

    </footer>
</div>
</body>

</html>