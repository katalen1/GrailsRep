<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 11/11/2015
  Time: 7:57 PM
--%>

<%@ page import="lab4.Person" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<g:if test="${people.empty}">
    <g:link action="newPersonForm">Add another person</g:link>
</g:if>
<g:else>
    <table>
        <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Gender</td>
            <td>Delete?</td>
        </tr>
        <g:each var="person" in="${people}">
            <tr>
                <td>${person.firstName}</td>
                <td>${person.lastName}</td>
                <td>${person.gender}</td>
                <td><g:form action="deletePerson"><g:hiddenField name="id" value="${person.getId()}"/><g:link action="deletePerson">Delete</g:link>  </g:form></td>
            </tr>
        </g:each>
    </table>
    <g:link action="newPersonForm">Add another person</g:link>
</g:else>



</body>
</html>