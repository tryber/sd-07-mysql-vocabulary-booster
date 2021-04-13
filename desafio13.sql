SELECT p.ProductName AS Produto,
p.Price AS Preço
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o_d
ON o_d.ProductID = p.ProductID
WHERE o_d.Quantity > 80
ORDER BY Produto;
