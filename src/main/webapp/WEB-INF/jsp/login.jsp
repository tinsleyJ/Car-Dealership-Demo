<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
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
            <h3 class="modal-header">Login</h3>
        </div>
    </header>
    <table>
        <form:form action="/login" method="POST" modelAttribute="user">
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-sm">Username</span>
                    <input type="text" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="username">
            </tr>
            <tr>
                <td class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputGroupd-sizing-sm">Password</span>
                    <input type="password" class="form-control"
                           aria-describedby="inputGroup-sizing-sm" name="password">
            </tr>
            <tr>
                <td><input type="submit" class="btn btn-primary" value="Submit"/></td>
            </tr>
        </form:form>
    </table>
    <h6 style="color: red">
        ${error}
    </h6>
</div>
</body>
</html>
