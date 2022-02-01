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
    <form:form action="/search" method="POST" modelAttribute="results">
            <span class="input-group input-group-sm mb-3">
                <span class="input-group-text" id="inputSearchTerm">Search Term</span>
                <input type="text" class="form-control">
            </span>
        <input type="submit" class="btn btn-primary" value="Submit" name="searchTerm">
    </form:form>

</div>
</body>
</html>
