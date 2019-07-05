<%--
  Created by IntelliJ IDEA.
  User: Julian
  Date: 6/22/2019
  Time: 2:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/2b8dd55cc1.js"></script> <!-- font awasame kid -->
<asset:stylesheet src="login.css"></asset:stylesheet>
</head>
<body>
<div>
    <i class="fas fa-address-book f-80 ml-48p mt-10p "></i>
</div>
<h2 class="text-center mb-3">Login Panel</h2>
<div id="loginDiv">

    <g:form method="post" onsubmit="return validate()" action="${goNext}">
        <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control"  aria-describedby="emailHelp" name="email" id="email">
            <p class="d-none color-red" id="emailError">Please fill up this field</p>
            <p class="d-none color-red" id="emailValid">Please give valid email</p>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" name="password" id="password">
            <p class="d-none color-red" id="passwordError">Please fill up this field</p>
            <p class="d-none color-red" id="passwordValid">Please give at least 8 character</p>
        </div>

        <g:submitButton name="Login"  class="btn btn-success w-200 mr-40"></g:submitButton>
        <g:link action="/" class="btn btn-danger w-200">Clear</g:link>

    </g:form>
    <h6 class="mt-2">Are you new here? <a href="/webPortal/signup">Register Now?</a></h6>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<asset:javascript src="login.js"/>
</body>
</html>