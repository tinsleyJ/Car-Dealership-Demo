<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Car Dealership</title>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
            <h3>Add a vehicle to inventory</h3>
        </div>
    </header>

    <main role="main">
        <form:form action="/add-vehicle" method="POST" modelAttribute="vehicle">
            <div>
                <div>
                    <label for="inputVehicleMake">Vehicle make</label>
                    <form:input path="vehicleMake" type="text" id="inputVehicleMake"/>
                </div>
                <div>
                    <label for="inputVehicleModel">Vehicle model</label>
                    <form:input path="vehicleModel" type="text" id="inputVehicleModel"/>
                </div>
                <div>
                    <div>
                        <label for="inputVehicleYear">Vehicle year</label>
                        <form:input path="vehicleYear" type="number" id="inputVehicleYear"/>
                    </div>
                    <div>
                        <label for="inputKilometers">Kilometers on meter</label>
                        <form:input path="kilometersOnMeter" type="text" id="inputKilometers"/>
                    </div>
                    <div>
                        <label for="inputPrice">Price</label>
                        <form:input path="price" type="text" id="inputPrice"/>
                    </div>
                    <div>
                        <label for="inputDescription">Description</label>
                        <form:input path="description" type="text" id="inputDescription"/>
                    </div>
                        <%--                <div>--%>
                        <%--                    <label for="inputDateOfPurchase">Date of purchase</label>--%>
                        <%--                    <form:input path="dateOfPurchase" type="date" id="inputDateOfPurchase"/>--%>
                        <%--                </div>--%>
                    <div>
                        <label for="inputDaysOnLot">Days on lot</label>
                        <form:input path="daysOnLot" type="text" id="inputDaysOnLot"/>
                    </div>
                    <div>
                        <label for="inputImg">Image</label>
                        <form:input path="img" type="file" id="inputImg"/>
                    </div>
                </div>
            </div>

            <button type="submit">Add vehicle to inventory</button>
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