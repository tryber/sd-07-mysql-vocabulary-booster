SELECT ProductName AS 'Produto',
MIN(det.Quantity) AS 'Mínima',
MAX(det.Quantity) AS 'Máxima',
AVG(det.Quantity) AS 'Média'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS det
ON prod.ProductID = det.ProductID
GROUP BY det.ProductID;
