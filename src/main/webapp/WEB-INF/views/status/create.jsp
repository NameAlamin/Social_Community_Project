<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Create Status</title>
</head>
<body>
<div class="container">
    <div class="row mt-1">
        <div class="col-md-9">
            <br><br>
            <form:form action="${pageContext.request.contextPath}/status/store" method="post" modelAttribute="statusDTO">
                <div class="form-group">
                    <label class="font-weight-bolder" for="title">Title</label>
                    <form:input path="title" cssClass="form-control"/>
                </div>

                <div class="form-group">
                    <label class="font-weight-bolder" for="description">Description</label>
                    <form:textarea cssClass="form-control" path="description"/>
                </div>

                <form:select cssClass="dropdown" path="location">
                    <form:option selected="true" value="Select Location" disabled="true"/>
                    <form:options items="${locationList}"/>
                </form:select>

                <form:select cssClass="dropdown" path="privacy">
                    <form:option selected="true" value="Select Privacy" disabled="true"/>
                    <form:options items="${privacyList}"/>
                </form:select>
                <br>
                <input type="file" name="image" multiple="multiple" accept="image/*"/>
                <button type="submit" class="btn btn-danger mt-4">Create</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
