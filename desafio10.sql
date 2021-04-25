SELECT products.ProductName AS 'Produto',
  MIN(order_details.Quantity) AS 'Mínima',
  MAX(order_details.Quantity) AS 'Máxima',
  ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM order_details
  JOIN products ON products.ProductID = order_details.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY ROUND(AVG(order_details.Quantity), 2),
  products.ProductName;
