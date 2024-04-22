<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3>고객 목록</h3>
<%-- action 의 값이 없거나 생략되면 현재 요청 경로로 보냄--%>
<form>
    이름
    <input value="${prevSearch}" type="text" placeholder="조회할 고객 이름을 입력하세요." name="search">
    <input type="submit" value="조회">
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>LastName</th>
        <th>FirstName</th>
        <th>BirthDate</th>
        <th>Photo</th>
        <th>Notes</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employeeList}" var="employees">
        <tr>
            <td>${employees.employeeID}</td>
            <td>${employees.lastName}</td>
            <td>${employees.firstName}</td>
            <td>${employees.birthDate}</td>
            <td>${employees.photo}</td>
            <td>${employees.notes}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
