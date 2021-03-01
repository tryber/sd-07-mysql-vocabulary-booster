SELECT
ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima' ,
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details od
JOIN w3schools.products p
ON p.ProductID = od.ProductID
GROUP BY od.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
