SELECT prod.ProductName AS 'Produto',
ROUND(MIN(detOrd.Quantity), 2) AS 'Mínima',
ROUND(MAX(detOrd.Quantity), 2) AS 'Máxima',
ROUND(AVG(detOrd.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS detOrd
INNER JOIN w3schools.products AS prod
ON detOrd.ProductID = prod.ProductID
GROUP BY prod.ProductName
HAVING `Média` > 20.00
ORDER BY `Média`, Produto;
