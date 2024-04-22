<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객명으로 고객 조회</h3>
<form action="/main25/sub4">
    고객 이름 :
    <input type="text" name="search" placeholder="고객 이름을 입력하세요">
    <input type="submit" value="조회">
</form>
<hr>
<div>
    <c:forEach items="${customers}" var="customer">
        <h4>${customer.customerID}번 고객</h4>
        <p>
            이름 :
            <input type="text" value="${customer.customerName}" readonly>
        </p>
        <p>
            담당자 :
            <input type="text" value="${customer.contactName}" readonly>
        </p>
        <p>
            주소 :
            <input type="text" value="${customer.address}" readonly>
        </p>
        <p>
            도시 :
            <input type="text" value="${customer.city}" readonly>
        </p>
        <p>
            우편번호 :
            <input type="text" value="${customer.postalCode}" readonly>
        </p>
        <p>
            국가 :
            <input type="text" value="${customer.country}" readonly>
        </p>
    </c:forEach>
</div>
</body>
</html>
