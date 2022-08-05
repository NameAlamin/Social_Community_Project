<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 col-lg-6">
            <%--@elvariable id="locationDTO" type="com.dto.LocationDTO"--%>
            <form:form action="${pageContext.request.contextPath}/location/store" method="post" modelAttribute="locationDTO">
                <br><br>
                <label class="font-weight-bolder ">Location:</label>
                <form:input path="locationName" cssClass="form-control"/>
                <button type="submit" class="btn btn-danger my-4">Create</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
