<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 5/30/2022
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
    />
    <title>UserForm</title>
    <style>
        .table1{
            width: 370px;
            border: 0;
            border: 0;
            cellpadding:0;
            cellspacing:"0;
            align:"center";
        }

        * {
            margin: 0px;
            padding: 0px;
            outline: 0px;
        }
        .wrapper {
            width: 450px;
            height: 350px;
            background-color: #5d6788;
            padding: 50px;
            margin: 0 auto;
            position: relative;
            border: 2px solid #ccc;
            margin-top: 10px;
        }
        .wrapper h3 {
            color: #30db39;
            margin-bottom: 15px;
            text-align: center;
        }
        .wrapper label {
            font-family: sans-serif;
            font-size: 16px;
            color: #b1ff6a;
        }
        #fild {
            width: 350px;
            height: 20px;
            padding: 15px;
            border-radius: 5px;
            margin-top: 5px;
            border: 1px solid rgb(255, 255, 255);
        }
        #fild:focus {
            border: 2px solid rgb(255, 77, 77);
        }
        .star {
            color: rgb(250, 117, 117);
        }
        .middle-btn{
            display: block;
            margin: auto;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="wrapper mt-5">
        <h3>Set Location</h3>
        <%--@elvariable id="locationDTO" type="com.dto.LocationDTO"--%>
        <form:form action="${pageContext.request.contextPath}/location/store" method="post" modelAttribute="locationDTO">
            <label class="font-weight-bolder ">Location:</label>
            <form:input path="locationName" id="fild" placeholder="Enter Location" cssClass="form-control" />
            <button type="submit" class="btn btn-outline-warning mt-5 middle-btn">Create</button>
        </form:form>
    </div>
</div>
</body>
</html>
