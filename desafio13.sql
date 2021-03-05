SELECT P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS Q
ON P.ProductID = Q.ProductID
WHERE Q.Quantity > 80
GROUP BY P.ProductName
ORDER BY P.ProductName;
