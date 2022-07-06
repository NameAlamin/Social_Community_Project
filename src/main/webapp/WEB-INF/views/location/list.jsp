<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Location List</title>
</head>
<body>
    <div class="container">
        <div class="row mt-1">
            <div class="col-lg-12 cl-md-9 col-sm-12">
                <a class="btn btn-success mt-4 mb-2 float-right" href="${pageContext.request.contextPath}/location/create">Add Location</a>
                <table class="table table-dark table-striped table-bordered">
                    <thead class="thead">
                    <th class="th">Id</th>
                    <th class="th">Location Name</th>
                    <th class="th">Update</th>
                    <th class="th">Delete</th>
                    </thead>
                    <tbody class="tbody">
                    <h4 class="mt-4">Location(${locationList.size()})</h4>
                    <c:forEach var="location" items="${locationList}">
                        <tr>
                            <td>${location.getId()}</td>
                            <td>${location.getLocationName()}</td>
                            <td><a class="btn btn-primary" href="#">Update</a></td>
                            <td><a class="btn btn-danger" href="#">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
