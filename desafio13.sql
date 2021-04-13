SELECT 
    P.ProductName AS Produto,
    P.Price AS Preço
FROM
    w3schools.products P,
    w3schools.order_details OD
WHERE
    OD.Quantity > 80
	AND P.ProductID = OD.ProductID
ORDER BY Produto;