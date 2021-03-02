SELECT products.ProductName AS `Produto`,
MIN(order_details.quantity) AS `Mínima`,
MAX(order_details.quantity) AS `Máxima`,
ROUND(AVG(order_details.quantity), 2) AS `Média`
FROM w3schools.order_details AS order_details
INNER JOIN w3schools.products AS products
ON products.ProductID = order_details.ProductID
GROUP BY `Produto`
ORDER BY `Média`, `Produto`;
