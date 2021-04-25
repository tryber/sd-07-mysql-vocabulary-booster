SELECT prod.ProductName AS 'Produto',
MIN(det.Quantity) AS 'Mínima',
MAX(det.Quantity) AS 'Máxima',
ROUND(AVG(det.Quantity), 2) AS 'Média'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS det
ON prod.ProductID = det.ProductID
GROUP BY det.ProductID
HAVING `Média` > 20.00
ORDER BY `Média` ASC, `Produto`;
