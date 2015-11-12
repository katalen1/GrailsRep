<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 11/11/2015
  Time: 8:39 PM
--%>

<%@ page import="lab4.Person" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h1>Are you sure you want to delete this person?</h1>
<g:form><g:hiddenField name="id" value="${id}"/>
<g:actionSubmit value="Yes" action="delete"/>
<g:actionSubmit value="No" action="index" />
</g:form>
</body>
</html>