SELECT P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD ON OD.ProductID = P.ProductID
WHERE OD.QUANTITY > 80
ORDER BY Produto;
