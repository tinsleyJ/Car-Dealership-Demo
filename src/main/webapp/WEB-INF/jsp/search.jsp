<%--
  Created by IntelliJ IDEA.
  User: jonat
  Date: 1/31/2022
  Time: 1:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
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
            <h3 class="modal-header">Search inventory</h3>
        </div>
    </header>
    <form:form action="/search/make/{vehicleMake}" method="GET" modelAttribute="results">
    <table>
        <tr>
            <td class="input-group input-group-sm mb-3">
                <span class="input-group-text" id="inputSearchMake">Vehicle Make</span>
                <label>
                    <input type="text"
                           class="form-control"
                           name="vehicleMake">
                </label>
                <input type="submit"
                       class="btn btn-primary"
                       value="Submit">
            </td>
        </tr>
        </form:form>
        <form:form action="/search/model/{vehicleModel}" method="GET" modelAttribute="results">
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputSearchModel">Vehicle Model</span>
                    <label>
                        <input type="text"
                               class="form-control"
                               name="vehicleModel">
                    </label>
                    <input type="submit"
                           class="btn btn-primary"
                           value="Submit">
                </td>
            </tr>
        </form:form>
        <form:form action="/search/year/{vehicleYear}" method="GET" modelAttribute="results">
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputSearchYear">Manufactured After</span>
                    <label>
                        <input type="number"
                               class="form-control"
                               name="vehicleYear">
                    </label>
                    <input type="submit"
                           class="btn btn-primary"
                           value="Submit">
                </td>
            </tr>
        </form:form>
        <form:form action="/search/kilometers/{vehicleKilometers}" method="GET" modelAttribute="results">
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputSearchKilometers">Max Kilometers</span>
                    <label>
                        <input type="number"
                               class="form-control"
                               name="vehicleKilometers">
                    </label>
                    <input type="submit"
                           class="btn btn-primary"
                           value="Submit">
                </td>
            </tr>
        </form:form>
        <form:form action="/search/price/{vehiclePrice}" method="GET" modelAttribute="results">
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputSearchPrice">Max Price</span>
                    <label>
                        <input type="number"
                               class="form-control"
                               name="vehiclePrice">
                    </label>
                    <input type="submit"
                           class="btn btn-primary"
                           value="Submit">
                </td>
            </tr>
        </form:form>
    </table>
</div>
</body>
</html>
