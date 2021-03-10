SELECT produto.ProductName AS Produto,
MAX(order_det.Quantity) AS "Máxima",
MIN(order_det.Quantity) AS "Mínima",
ROUND(AVG(order_det.Quantity),2) AS "Média"
FROM w3schools.order_details AS order_det
INNER JOIN w3schools.products AS product
ON product.ProductID = order_det.ProductID
GROUP BY order_det.ProductID
HAVING `Média` > 20
ORDER BY `Média`, Produto;
