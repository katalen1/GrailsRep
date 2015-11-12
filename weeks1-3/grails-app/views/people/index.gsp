<%--
  Created by IntelliJ IDEA.
  User: Steve
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
    <g:if test="${name}">
        Hi there ${name}
        <p></p>
        <h1>Tell me your age, gender, major, and year at school</h1>
        <g:form action="info">
            <g:hiddenField name="name" value="${name}" />
            Your age: <g:textField name="age"/>
            Your gender: <g:textField name="gender"/>
            Your major: <g:textField name="major"/>
            Your year: <g:textField name="year"/>
            <g:submitButton name="Submit"/>
        </g:form>
        <g:link action="info">Say hello</g:link>
    </g:if>
    <g:else>
        <g:link action="input">What is your name?</g:link>
    </g:else>


</body>
</html>