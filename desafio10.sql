SELECT
products.ProductName 'Produto',
MIN(order_d.Quantity) AS 'Mínima',
MAX(order_d.Quantity) 'Máxima',
ROUND(AVG(order_d.Quantity), 2) 'Média'
FROM w3schools.order_details order_d
LEFT JOIN w3schools.products products
ON products.ProductID = order_d.ProductID
GROUP BY order_d.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
