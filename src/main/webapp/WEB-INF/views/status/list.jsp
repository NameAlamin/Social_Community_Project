<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Status List</title>
</head>
<body>
    <div class="container">
        <div class="row mt-1">
            <div class="col-lg-12 col-md-9 col-sm-12">
                <a class="btn btn-success mt-4 mb-2 float-right" href="${pageContext.request.contextPath}/status/create">Add Status</a>
                <table class="table table-dark table-striped table-bordered">
                    <thead class="thead">
                    <tr>
                        <th class="th">Id</th>
                        <th class="th">Title</th>
                        <th class="th">Description</th>
                        <th class="th">Privacy</th>
                        <th class="th">Location</th>
                        <th class="th">image</th>
                        <th class="th">Update</th>
                        <th class="th">Delete</th>
                    </tr>
                    </thead>
                    <tbody class="tbody">
                    <h4 class="mt-4">Status(${statusList.size()})</h4>
                    <c:forEach var="status" items="${statusList}">
                        <tr>
                            <td class="td">${status.getId()}</td>
                            <td class="td">${status.getTitle()}</td>
                            <td class="td">${status.getDescription()}</td>
                            <td class="td">${status.getPrivacy()}</td>
                            <td class="td">${status.getLocation().getLocationName()}</td>

                            <td><c:forEach var="image" items="${status.getStatusAttachmentList()}">
                                <img src="/image/${image.getAttachmentPath()}"  height="50px" width="50px"  style="object-fit: cover" class="img-fluid border border-danger"/>
                            </c:forEach></td>

                            <td><a class="btn btn-primary" href="/status/update/${status.getId()}">Update</a></td>
                            <td><a class="btn btn-danger" href="/status/delete/${status.getId()}">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>

