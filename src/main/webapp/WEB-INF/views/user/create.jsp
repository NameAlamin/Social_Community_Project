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
            cellspacing:0;
            align:"center";
        }

        * {
            margin: 0px;
            padding: 0px;
            outline: 0px;
        }
        .wrapper {
            width: 450px;
            height: 550px;
            background-color: #5d6788;
            padding: 50px;
            margin: 0 auto;
            position: relative;
            border: 2px solid #ccc;
            margin-top: 10px;
        }
        .wrapper h3 {
            color: #30db39;
            margin-bottom: 20px;
            margin-left: 80px;
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
      <div class="wrapper">
          <h3>User Registration</h3>
          <%--@elvariable id="userDTO" type="com.dto.UserDTO"--%>
          <form:form action="${pageContext.request.contextPath}/user/store" method="post" modelAttribute="userDTO" enctype="multipart/form-data" >
             <table class="table1">

                 <tr>
                     <td>
                         <label for="name">Name<span class="star">*</span></label><br />
                         <form:input class="input-field" type="text" cssClass="form-control" id="fild" placeholder="Enter Your Name" path="name"/><br/>
                             <%--===================== akhane (path="name") ai name hoche amra UserDto class er
                                 object create korchi UserController ay ai boject er sathe mapping korachi
                                 form ta submit krle value gulo ai object ta collect korbe--%>
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <label for="name">Email<span class="star">*</span></label><br />
                         <form:input class="input-field" type="email" cssClass="form-control" id="fild" placeholder="Enter Your Email" path="email"/><br />
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <label for="name">Password<span class="star input-field">*</span></label><br />
                         <form:input class="input-field" type="password" cssClass="form-control" id="fild" placeholder="Enter Your Password" path="password"/><br />
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <form:select path="location" class="mt-1">
                             <form:option value="Select Location" selected="true" disabled="true"/>
                             <form:options items="${locationList}"/>
                         </form:select>
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <form:select path="role" class="mt-3">
                             <form:option value="Select Role" selected="true" disabled="true"/>
                             <form:options items="${roleList}"/>
                         </form:select>
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <input class="mt-3" type="file" name="image" accept="image/*" />
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <button type="submit" class="btn btn-outline-warning mt-4 middle-btn">Create</button>
                     </td>
                 </tr>
             </table>
          </form:form>
      </div>
  </div>
</body>
</html>
