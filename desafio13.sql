SELECT P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS Q
ON P.ProductID = Q.ProductID
WHERE Q.Quantity > 80
ORDER BY P.ProductName;
