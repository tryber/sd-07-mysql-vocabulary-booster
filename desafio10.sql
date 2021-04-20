SELECT
p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY ROUND(AVG(od.Quantity), 2), p.ProductName
LIMIT 100 OFFSET 29;
