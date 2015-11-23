<%--
  Created by IntelliJ IDEA.
  User: Steve
--%>

<%@ page import="lab4.Person" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<g:form action="createLeague">
    League Name <g:textField name="name"/> <br/>
    League Members <g:select multiple="multiple" name="members" optionValue="firstName" value="id" optionKey="id" from="${lab4.Person.list()}" noSelection="${['null':'-none-']}"/><br/>
    <g:submitButton name="Submit"/>

</g:form>

</body>
</html>