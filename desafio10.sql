SELECT ProductName AS 'Produto',
MIN(o.Quantity) AS 'Mínima',
MAX(o.Quantity) AS 'Máxima',
ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o ON p.ProductID = o.ProductID
GROUP BY p.ProductName
HAVING AVG(o.Quantity) > 20.00
ORDER BY AVG(o.Quantity), `Produto`;
