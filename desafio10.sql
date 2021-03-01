SELECT p.ProductName AS `Produto`,
MIN(de.Quantity) AS `Mínima`,
MAX(de.Quantity) AS `Máxima`,
ROUND(AVG(de.Quantity), 2) AS `Média`
FROM w3schools.products AS `p`
INNER JOIN w3schools.order_details AS `de`
ON p.ProductID = de.ProductID
GROUP BY de.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
