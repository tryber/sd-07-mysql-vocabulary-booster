SELECT p.ProductName AS Produto, MIN(od.Quantity) AS Mínima, MAX(od.Quantity) AS Máxima, ROUND(AVG(od.Quantity),2) AS Média
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON p.ProductID = od.ProductID
GROUP BY p.ProductName HAVING Média > 20
ORDER BY Média, p.ProductName;
