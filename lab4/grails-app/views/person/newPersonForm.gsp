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
<h1>Add a new person</h1>
<g:hasErrors bean="${person}">
    <ul>
        <g:eachError var="err" bean="${person}">
            <li><g:message error="${err}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>

<g:form action="createPerson">
    First name <g:textField name="firstName" value="${fieldValue(bean: person, field: 'firstName')}"/> <br/>
    Middle Initial <g:textField name="middleInitial" value="${fieldValue(bean: person, field: 'middleInitial')}"/><br/>
    Last name <g:textField name="lastName" value="${fieldValue(bean: person, field: 'lastName')}"/><br/>
    Gender <g:select name="gender" from="${["m", "f"]}" value="${fieldValue(bean: person, field: 'gender')}"/><br/>
    Age: <g:textField name="age" value="${fieldValue(bean: person, field: 'age')}"/><br/>
    Max Deadlift: <g:textField name="maxDeadlift" value="${fieldValue(bean: person, field: 'maxDeadlift')}"/><g:select name="weightType" from="${["lbs", "kg"]}" value="${fieldValue(bean: person, field: 'weightType')}"/><br/>
    Graduation Date: <g:textField name="gradDate" value="${fieldValue(bean: person, field: 'gradDate')}"/><br/>
    Super Power: <g:textField name="superPower" value="${fieldValue(bean: person, field: 'superPower')}"/><br/>
    <g:submitButton name="Submit"/>

</g:form>
</body>
</html>