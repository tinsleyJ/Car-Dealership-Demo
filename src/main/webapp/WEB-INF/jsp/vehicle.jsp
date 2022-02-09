<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${vehicle.vehicleMake} ${vehicle.vehicleModel}</title>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous">
    </script>
</head>
<c:forEach var="vehicle" items="${results}">
    <body class="container">
    <jsp:include page="layout.jsp"/>
    <div>
        <header>
            <div>
                <h3 class="modal-header">${vehicle.vehicleMake} ${vehicle.vehicleModel}</h3>
            </div>
        </header>
    </div>
    <table class="table table-striped table-hover table-bordered">
        <thead class="table-primary">
        <tr>
            <th>id</th>
            <th>Image</th>
            <th>Make</th>
            <th>Model</th>
            <th>Year</th>
            <th>Odometer</th>
            <th>Description</th>
            <th>Days on Lot</th>
            <th>Price</th>
            <th>Delete</th>

        </tr>
        </thead>
        <tr>
            <td>${vehicle.id}</td>
            <td><img width="100" height="100" alt="..." src="/getImageById/${vehicle.img}"/></td>
            <td>${vehicle.vehicleMake}</td>
            <td>${vehicle.vehicleModel}</td>
            <td>${vehicle.vehicleYear}</td>
            <td>${vehicle.kilometersOnMeter} km</td>
            <td>${vehicle.description}</td>
            <td>${vehicle.daysOnLot}</td>
            <td>$${vehicle.price}</td>
            <td><input type="Button" class="btn btn-danger" value="Delete"></td>
        </tr>
    </table>
    </body>
</c:forEach>
</html>
