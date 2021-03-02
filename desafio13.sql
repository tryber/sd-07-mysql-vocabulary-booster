SELECT product.ProductName AS `Produto`,
product.Price AS Preço
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS order_detail
ON product.ProductID = order_detail.ProductID
WHERE order_detail.Quantity > 80
ORDER BY `Produto`;
