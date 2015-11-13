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

<g:if test="${leagues.empty}">
    <g:link action="create">Create a league</g:link>
</g:if>
<g:else>
    <table>
        <tr>
            <td>League Name</td>
            <td>Number of Members</td>
        </tr>
        <g:each var="league" in="${leagues}">
            <tr>
                <td>${league.name}</td>
                <td>${league.members.size()}</td>
            </tr>
        </g:each>
    </table>
    <g:link action="create">Add another league</g:link>
</g:else>

</body>
</html>