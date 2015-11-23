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

${league.name}
<g:each var="member" in="${lmembers}">
    ${member.firstName}<br/>
    ${member.lastName}<br/>
</g:each>
</body>
</html>