SELECT products.ProductName AS Produto ,MIN(order_data.Quantity) AS "Mínima",
MAX(order_data.Quantity) AS "Máxima",
ROUND(AVG(order_data.Quantity),2) AS "Média"
FROM w3schools.order_details AS order_data
INNER JOIN w3schools.products AS products
ON products.ProductID = order_data.ProductID
GROUP BY order_data.ProductID
HAVING `Média` > 20
ORDER BY `Média`,Produto;
