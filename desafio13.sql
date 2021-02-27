SELECT
	P.ProductName AS 'Produto',
    P.Price AS 'Preço'
FROM w3schools.order_details O
JOIN w3schools.products P
WHERE Quantity > 80 AND O.ProductID = P.ProductID
ORDER BY P.ProductName;