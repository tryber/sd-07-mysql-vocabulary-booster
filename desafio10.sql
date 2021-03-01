SELECT products.ProductName AS Produto ,MIN(order_data.Quantity) AS "Mínima",
MAX(order_data.Quantity) AS "Máxima",
ROUND(AVG(order_data.Quantity)) AS "Média"
FROM w3schools.order_details AS order_data
INNER JOIN w3schools.products AS products
ON products.ProductID = order_data.ProductID
WHERE order_data.Quantity > 20.00
GROUP BY order_data.ProductID
ORDER BY `Média`,Produto;
