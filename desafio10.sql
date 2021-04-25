SELECT
p.ProductName AS `Produto`,
ROUND(MIN(od.Quantity), 2) AS 'Mínima',
ROUND(MAX(od.Quantity), 2) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS `Média`
FROM w3schools.products p
LEFT JOIN w3schools.order_details od ON od.ProductID = p.ProductID
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
