<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Car Dealership</title>
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
            <h3 class="modal-header">Add a vehicle to inventory</h3>
        </div>
    </header>
    <form:form action="/add-vehicle" method="POST" modelAttribute="vehicle">
        <table>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputVehicleMake">Vehicle Make</span>
                    <input type="text" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="vehicleMake">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputVehicleModel">Vehicle Model</span>
                    <input type="text" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="vehicleModel">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputVehicleYear">Vehicle Year</span>
                    <input type="number" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="vehicleYear">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputKilometers">Kilometers On Meter</span>
                    <input type="number" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="kilometersOnMeter">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputPrice">Price</span>
                    <input type="number" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="price">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputDescription">Description</span>
                    <input type="text" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="description">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputDateOfPurchase">Date of Purchase</span>
                    <input type="date" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="dateOfPurchase">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputDaysOnLot">Days on Lot</span>
                    <input type="number" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="daysOnLot">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-sm" id="inputImg"></span>
                    <input type="file" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="img">
            </tr>
        </table>
        <input type="submit" class="btn btn-primary" value="Add vehicle to inventory"/>
    </form:form>
</div>
</body>

</html>