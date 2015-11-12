<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 11/11/2015
  Time: 8:03 PM
--%>

<%@ page import="lab4.Person" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h1>Add a new person</h1>
    <g:form action="createPerson">
        First Name:<g:textField name="firstName"/><br/>
        Last Name:<g:textField name="lastName"/><br/>
        <g:select name="gender" from="${['M','F','U']}"/>
        <g:submitButton name="Submit"/>
    </g:form>
</body>
</html>