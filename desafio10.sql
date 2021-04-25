SELECT p.ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM w3schools.order_details o
INNER JOIN w3schools.products p
on o.ProductID = p.ProductID
GROUP BY p.ProductName HAVING ROUND(AVG(o.Quantity), 2) > 20
ORDER BY 4, 1;
