<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="padding: 20px;font-size: 30px;background-color: greenyellow">${message}</div>
</c:if>
<hr>
<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias eaque hic iusto, magnam rerum saepe sit suscipit
    tenetur. Dignissimos est expedita officiis quod. Aliquam commodi, debitis ducimus nesciunt quasi soluta?
</div>
</body>
</html>
