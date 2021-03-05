SELECT products.ProductName AS `Produto`,
products.Price AS `Preço`
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS orderdet
ON products.ProductID = orderdet.ProductID
WHERE orderdet.Quantity > 80
ORDER BY `Produto`;