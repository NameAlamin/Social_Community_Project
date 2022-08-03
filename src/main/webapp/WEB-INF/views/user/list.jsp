<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>User List</title>
</head>
<body>
    <div class="container">
       <div class="row mt-1">
           <div class="col-sm-12 col-md-9 col-lg-12">
               <a class="btn btn-success mt-4 mb-2 float-right" href="${pageContext.request.contextPath}/user/create">Add User</a>
               <table class="table table-dark table-striped table-bordered">

                   <thead class="thead">
                       <tr>
                           <th class="th">Id</th>
                           <th class="th">Name</th>
                           <th class="th">Email</th>
                           <th class="th">Password</th>
                           <th class="th">Location</th>
                           <th class="th">image</th>
                           <th class="th">Update</th>
                           <th class="th">Delete</th>
                       </tr>
                   </thead>

                   <tbody class="tbody">
                       <h4 class="mt-4">Users(${userList.size()})</h4>
                       <c:forEach var="user" items="${userList}">
                           <tr>
                               <td class="td">${user.getId()}</td>
                               <td class="td">${user.getName()}</td>
                               <td class="td">${user.getEmail()}</td>
                               <td class="td">${user.getPassword()}</td>
                               <td class="td">${user.getLocation().getLocationName()}</td>
<%--                               <td class="td">${user.getAttachment().getAttachmentPath()}</td>--%>
                               <td class="td"><img src="/user/${user.getAttachment().getAttachmentPath()}" alt="***" height="50px" width="50px" style="object-fit: cover"/></td>
                               <td><a class="btn btn-primary" href="/user/update/${user.getId()}">Update</a></td>
                               <td><a class="btn btn-danger" href="/user/delete/${user.getId()}">Delete</a></td>
                           </tr>
                       </c:forEach>
                   </tbody>
               </table>
           </div>
       </div>
    </div>
</body>
</html>
