SELECT PROD.ProductName AS "Produto",
MIN(DET.Quantity) as "Mínima",
MAX(DET.Quantity) as "Máxima",
AVG(DET.Quantity) as "Média"
FROM w3schools.products AS PROD
INNER JOIN w3schools.order_details AS DET
ON PROD.ProductID = DET.ProductID
GROUP BY PROD.ProductName
HAVING AVG(DET.Quantity) > 20
ORDER BY AVG(DET.Quantity) ASC, PROD.ProductName ASC;
