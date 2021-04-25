SELECT p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS w
ON p.ProductID = w.ProductID
WHERE w.Quantity > 80
ORDER BY p.ProductName;
