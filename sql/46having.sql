# 46having.ssql

USE w3schools;

# HAVING : 집계함수의 조건절
SELECT CategoryId, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

# 상품수가 10개 이상인 카테고리
SELECT *
FROM (SELECT CategoryId, COUNT(ProductID) 상품수
      FROM Products
      GROUP BY CategoryID) c
WHERE 상품수 >= 10;

SELECT CategoryId, COUNT(ProductID) 상품수
FROM Products
GROUP BY CategoryID
HAVING 상품수 >= 10;

# 고객이 5명 이상 있는 국가들 조회
SELECT Country, COUNT(CustomerID) customerNumber
FROM Customers
GROUP BY Country
HAVING customerNumber >= 5
ORDER BY customerNumber DESC;

# 97년 7월 매출액(SUM(상품가격*갯수))이 10000달러 이상인 직원들 조회
SELECT e.LastName,
       e.FirstName,
       SUM(p.Price * od.Quantity) sumOfOrders
FROM Orders o
         JOIN Employees e ON o.EmployeeID = e.EmployeeID
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY e.EmployeeID
HAVING sumOfOrders >= 10000;

select c.CustomerID, c.CustomerName, sum(p.Price * od.Quantity) 구매가격
from Customers c
         join Orders o on o.CustomerID = c.CustomerID
         join OrderDetails od on od.OrderID = o.OrderID
         join Products p on p.ProductID = od.ProductID
where o.OrderDate between '1997-07-01' and '1997-07-31'
group by c.CustomerID
order by 구매가격 desc;


