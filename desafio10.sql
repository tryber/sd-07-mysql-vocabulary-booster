SELECT p.ProductName AS Produto,
MIN(Quantity) AS "Mínima",
MAX(Quantity) AS "Máxima",
ROUND(AVG(Quantity), 2) AS "Média"
FROM w3schools.order_details od
INNER JOIN w3schools.products p
ON od.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING `Média` > 20.00
ORDER BY `Média`, p.ProductName;
