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

<g:if test="${people.empty}">
    <g:link action="newPersonForm">Add another person</g:link>
</g:if>
<g:else>
    <table>
        <tr>
            <td>First Name</td>
            <td>Middle Initial</td>
            <td>Last Name</td>
            <td>Gender</td>
            <td>Age</td>
            <td>Graduation Date</td>
            <td>Max Deadlift</td>
            <td>Super Power</td>
            <td>Delete?</td>
        </tr>
        <g:each var="person" in="${people}">
            <tr>
                <td>${person.firstName}</td>
                <td>${person.middleInitial}</td>
                <td>${person.lastName}</td>
                <td>${person.gender}</td>
                <td>${person.age}</td>
                <td>${person.gradDate}</td>
                <td>${person.maxDeadlift}</td>
                <td>${person.superPower}</td>
                <td><g:form action="deletePerson"><g:hiddenField name="person" value="${person}"/></g:form><g:link action="deletePerson">Delete</g:link>  </td>
            </tr>
        </g:each>
    </table>
    <g:link action="newPersonForm">Add another person</g:link>
</g:else>



</body>
</html>