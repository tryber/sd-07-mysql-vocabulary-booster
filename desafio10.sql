SELECT
p.ProductName AS 'Produto',
MIN(d.Quantity) AS 'Mínima',
MAX(d.Quantity) AS 'Maxima',
ROUND(AVG(d.Quantity), 2) AS 'Média'
FROM w3schools.products p

LEFT JOIN w3schools.order_details d
ON d.ProductID = p.ProductID

GROUP BY `Produto`

HAVING `Média` > 20.00

ORDER BY `Média`, `Produto`;
