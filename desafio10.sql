SELECT p.ProductName AS 'Produto',
MIN(d.Quantity) AS 'Mínima',
MAX(d.Quantity) AS 'Máxima',
AVG(d.Quantity) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS d ON p.ProductID = d.ProductID
GROUP BY d.ProductID
ORDER BY Média, Produto;
