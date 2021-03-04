SELECT P.ProductName AS 'Produto', P.Price AS 'Preço'  FROM w3schools.order_details O
INNER JOIN w3schools.products P
ON O.ProductID = P.ProductID
WHERE O.Quantity > 80
ORDER BY 1;
