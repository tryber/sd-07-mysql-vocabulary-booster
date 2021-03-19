SELECT
p.ProductName AS "Produto",
MIN(o.Quantity) AS "Mínima",
MAX(o.Quantity) AS "Máxima",
ROUND(AVG(o.Quantity),2) AS Média
FROM w3schools.order_details AS o
INNER JOIN w3schools.products AS p ON p.ProductID = o.ProductID
GROUP BY p.ProductName
HAVING Média > 20.00
ORDER BY ROUND(AVG(o.Quantity),2) ASC, p.ProductName ASC;
