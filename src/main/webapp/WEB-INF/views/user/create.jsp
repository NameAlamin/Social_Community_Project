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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>UserForm</title>
</head>
<body>
  <div class="container">
      <div class="row">
          <div class="col-lg-9 col-md-6 col-sm-12">
              <%--@elvariable id="userDTO" type="com.dto.UserDTO"--%>
              <form:form action="${pageContext.request.contextPath}/user/store" method="post" modelAttribute="userDTO" >
                  <div class="form-group">
                      <label class="font-weight-bolder" for="name">Name</label>
                      <form:input type="text" cssClass="form-control" id="name" placeholder="Name" path="name"/>
                          <%--===================== akhane (path="name") ai name hoche amra UserDto class er
                              object create korchi UserController ay ai boject er sathe mapping korachi
                              form ta submit krle value gulo ai object ta collect korbe--%>
                  </div>

                  <div class="form-group">
                      <label class="font-weight-bolder" for="email">Email address</label>
                      <form:input type="email" cssClass="form-control" id="email" placeholder="Email" path="email"/>
                  </div>

                  <div class="form-group">
                      <label class="font-weight-bolder" for="password">Password</label>
                      <form:input type="password" cssClass="form-control" id="password" placeholder="Password" path="password"/>
                  </div>

                  <div class="form-group">
                      <form:select path="location">
                          <form:option value="Select Location" selected="true" disabled="true"/>
                          <form:options items="${locationList}"/>
                      </form:select>
                  </div>
                  <br>

                  <button type="submit" class="btn btn-warning mt-4">Create</button>
              </form:form>
          </div>
      </div>
  </div>
</body>
</html>
