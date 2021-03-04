SELECT products.ProductName AS Produto,
products.Price AS Preço
FROM w3schools.products
INNER JOIN w3schools.order_details AS orders
ON products.ProductID = orders.ProductID
WHERE orders.Quantity > 80
ORDER BY Produto;
