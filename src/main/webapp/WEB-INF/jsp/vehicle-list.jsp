<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Vehicle List</title>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous">
    </script>
</head>
<body class="container">
<jsp:include page="layout.jsp"/>
<div>
    <header>
        <div>
            <h3 class="modal-header">Vehicles in stock</h3>
        </div>
    </header>
</div>
<table class="table table-striped table-hover table-bordered">
    <thead class="table-primary">
    <tr>
        <th>Make</th>
        <th>Model</th>
        <th>Year</th>
        <th>Kilometers</th>
        <th>Description</th>
        <th>Days on Lot</th>
        <th>Image</th>
    </tr>
    </thead>
    <c:forEach var="vehicle" items="${results}">
        <tr>
            <td>${vehicle.vehicleMake}</td>
            <td>${vehicle.vehicleModel}</td>
            <td>${vehicle.vehicleYear}</td>
            <td>${vehicle.kilometersOnMeter}</td>
            <td>${vehicle.description}</td>
            <td>${vehicle.daysOnLot}</td>
            <td><img alt="..." src="${vehicle.img}"></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
