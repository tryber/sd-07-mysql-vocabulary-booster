SELECT products.ProductName AS "Produto",
products.Price AS "Preço"
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS orderdetails
ON products.ProductID = orderdetails.ProductID
WHERE orderdetails.Quantity > 80
ORDER BY products.ProductName ASC;
