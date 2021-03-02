SELECT table_products.ProductName AS `Produto`,
  MIN(table_order_details.quantity) AS `Mínima`,
  MAX(table_order_details.quantity) AS `Máxima`,
  ROUND(AVG(table_order_details.quantity), 2) AS `Média`
FROM w3schools.order_details AS table_order_details
  INNER JOIN w3schools.products AS table_products ON table_order_details.ProductID = table_products.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`,
  `Produto`;
