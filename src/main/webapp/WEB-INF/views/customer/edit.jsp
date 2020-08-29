<%--
  Created by IntelliJ IDEA.
  User: huy8895
  Date: 8/28/20
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<html>
<head>
    <title>Edit customer</title>
</head>
<body>
<div class="container">
    <h1>Edit customer</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/customers">back to customer list</a>
    </p>
    <form method="post">
        <fieldset>
            <legend>
                Customer information
            </legend>
            <table class="table table-hover">
                <tr>
                    <td>Name</td>
                <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update customer"></td>
                </tr>
            </table>
        </fieldset>
    </form>


</div>
</body>
</html>
