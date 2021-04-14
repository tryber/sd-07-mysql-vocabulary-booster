SELECT
p.ProductName AS 'Produto',
MIN(d.Quantity) AS 'Mínima',
MAX(d.Quantity) AS 'Máxima',
ROUND(AVG(d.Quantity),2) AS 'Média'
FROM w3schools.products p
INNER JOIN w3schools.order_details d ON p.ProductID = d.ProductID
GROUP BY p.ProductName
HAVING AVG(d.Quantity) > 20.00
ORDER BY AVG(d.Quantity), p.ProductName;
