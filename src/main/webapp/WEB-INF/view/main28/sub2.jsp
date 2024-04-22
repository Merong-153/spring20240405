<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <c:if test="${not empty message}">
        <div style="padding: 20px; background-color: skyblue">
                ${message}
        </div>
    </c:if>
</div>
<h3>직원정보 입력</h3>
<form action="" method="post">
    <div>
        성
        <input type="text" name="lastName">

    </div>
    <div>
        이름
        <input type="text" name="firstName">

    </div>
    <div>
        생년월일
        <input type="text" name="birthDate" value="ex) 1999-09-24">

    </div>
    <div>
        사진
        <input type="text" name="photo">

    </div>
    <div>
        메모
        <input type="text" name="notes">

    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
