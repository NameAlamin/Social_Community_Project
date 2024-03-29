<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
          crossorigin="anonymous">

    <title>Login Page</title>


</head>

<style>
    body {
        margin: 0;
        padding: 0;
        background: #07cdff;
        background-size: cover;
        background-position: center;
        font-family: sans-serif;
    }
    .loginbox {
        width: 320px;
        height: 450px;
        background: #000;
        color: #fff;
        top: 50%;
        left: 50%;
        position: absolute;
        transform: translate(-50%, -50%);
        box-sizing: border-box;
        padding: 70px 30px
    }
    .loginbox input {
        width: 100%;
        margin-bottom: 20px;
    }
    .loginbox input[type="text"],
    input[type="password"] {
        border: none;
        border-bottom: 1px solid #fff;
        background: transparent;
        outline: none;
        height: 40px;
        color: #fff;
        font-size: 16px;
    }
    .loginbox input[type="submit"] {
        border: none;
        outline: none;
        height: 40px;
        background: #fb2525;
        color: #fff;
        font-size: 18px;
        border-radius: 20px;
    }
    .loginbox input[type="submit"]:hover {
        cursor: pointer;
        background: #ffc107;
        color: #000;
    }
    .loginbox a {
        text-decoration: none;
        font-size: 12px;
        line-height: 20px;
        color: darkgrey;
    }
    .loginbox a:hover {
        color: #07ffa0;
    }
</style>
<body>
<div class="container">

    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" class="form-control" >
    <div class="loginbox">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <h1 class="text-center fs-3 pb-3">Login Here</h1>
        <c:if test="${param.error != null}">
            <i class="text-danger">Sorry! you entered invalid username/password</i>
        </c:if>
        <c:if test="${param.logout != null}">
            <i class="text-danger">You are logged out</i>
        </c:if>
        <p>Username</p>
        <input type="text" name="username" placeholder="Enter Username">
        <p>Password</p>
        <input type="password" name="password" placeholder="Enter Password">
        <input type="submit" name="" value="Login">
        <a href="#">Lost your password?</a><br>
        <a href="#">Don't have an account?</a>

    </div>


    </form:form>


</body>

</html>