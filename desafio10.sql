SELECT prd.ProductName AS 'Produto', MIN(ordt.Quantity) AS 'Mínima',
MAX(ordt.Quantity) AS 'Máxima', ROUND(AVG(ordt.Quantity), 2) AS 'Média'
FROM w3schools.products AS prd
INNER JOIN w3schools.order_details AS ordt
    ON ordt.ProductID = prd.ProductID
GROUP BY prd.ProductName
HAVING ROUND(AVG(ordt.Quantity), 2) > 20.00
ORDER BY AVG(ordt.Quantity), prd.ProductName;
