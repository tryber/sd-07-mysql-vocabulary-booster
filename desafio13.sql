SELECT
Product.ProductName AS Produto,
Product.Price AS 'Preço'
FROM w3schools.products AS Product
INNER JOIN order_details AS OrderDetails
ON Product.ProductID = OrderDetails.ProductID
WHERE OrderDetails.Quantity > 80
ORDER BY Product.ProductName;
