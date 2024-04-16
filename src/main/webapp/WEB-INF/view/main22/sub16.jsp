<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: red; font-size: 30px; padding: 20px">${message}</div>
</c:if>
<form action="/main22/sub17">
    <div>
        아이디 :
        <input type="text" name="id">
    </div>
    <div>
        비밀번호 :
        <input type="text" name="pw">
    </div>
    <div>
        <input type="submit" value="로그인">
    </div>
</form>

</body>
</html>
