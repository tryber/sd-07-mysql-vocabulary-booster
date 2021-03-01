SELECT 
  products.ProductName AS "Produto",
  MIN(order_details.Quantity) AS "Mínima",
  MAX(order_details.Quantity) AS "Máxima",
  ROUND(AVG(order_details.Quantity), 2) AS "Média"
FROM order_details
JOIN products
ON order_details.ProductID = products.ProductID
GROUP BY products.ProductID
HAVING `Média` > 20
ORDER BY Média, Produto;

