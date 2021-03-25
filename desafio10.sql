SELECT prod.ProductName AS 'Produto',
MIN(ord_det.Quantity) AS 'Mínima',
MAX(ord_det.Quantity) AS 'Máxima',
ROUND((AVG(ord_det.Quantity)), 2) AS 'Média'
FROM w3schools.order_details AS ord_det 
INNER JOIN w3schools.products AS prod
ON ord_det.ProductID = prod.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
