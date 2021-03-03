SELECT table_products.ProductName AS `Produto`,
  table_products.Price AS `Preço`
FROM w3schools.order_details AS table_order_details
  INNER JOIN w3schools.products AS table_products ON table_order_details.ProductID = table_products.ProductID
WHERE table_order_details.Quantity > 80
GROUP BY `Produto`,
  `Preço`
ORDER BY `Produto`;
