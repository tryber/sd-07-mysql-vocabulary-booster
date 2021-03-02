SELECT 
products.ProductName AS Produto,
products.Price AS Preço
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS details
ON products.ProductID = details.ProductID
WHERE details.Quantity > 80
GROUP BY 1
ORDER BY 1;
