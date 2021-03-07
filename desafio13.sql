SELECT 
P.ProductName AS Produto,
P.Price as Preço
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O
ON O.ProductID = P.ProductID
WHERE O.Quantity > 80
ORDER BY Produto;
