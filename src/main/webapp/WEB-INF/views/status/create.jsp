<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        #fild2 {
            width: 350px;
            height: 23px;
            padding: 15px;
            border-radius: 5px;
            margin-top: 5px;
            margin-bottom: 18px;
            border: 1px solid rgb(255, 255, 255);
        }
        #fild3 {
            width: 350px;
            height: 100px;
            padding: 15px;
            border-radius: 5px;
            margin-top: 5px;
            margin-bottom: 18px;
            border: 1px solid rgb(255, 255, 255);
        }
        #fild2:focus {
            border: 2px solid rgb(255, 77, 77);
        }
        #attachments{
            margin-bottom: 20px;
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
        <h3>Create Post</h3>
        <%--@elvariable id="userDTO" type="com.dto.UserDTO"--%>
        <form:form action="${pageContext.request.contextPath}/status/store" method="post" modelAttribute="statusDTO" enctype="multipart/form-data">
            <table class="table1">

                <tr>
                    <td>
                        <label>Title<span class="star">*</span></label><br />
                        <form:input path="title" id="fild2"  cssClass="form-control"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Description<span class="star">*</span></label><br />
                        <form:textarea id="fild3" cssClass="form-control" path="description"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <form:select id="attachments" cssClass="dropdown" path="location" >
                            <form:option selected="true" value="Select Location" disabled="true"/>
                            <form:options items="${locationList}"/>
                        </form:select>
                    </td>
                </tr>

                <tr>
                    <td>
                        <form:select id="attachments" cssClass="dropdown" path="privacy">
                            <form:option selected="true" value="Select Privacy" disabled="true"/>
                            <form:options items="${privacyList}"/>
                        </form:select>
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="file" id="attachments" name="image" multiple="multiple" accept="image/*"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <button type="submit"  class="btn btn-outline-warning mt-3 middle-btn">Submit</button>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
</div>
</body>
</html>
