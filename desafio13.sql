SELECT prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM w3schools.products AS prod
WHERE EXISTS
(
SELECT * FROM  w3schools.order_details AS oDet
WHERE oDet.Quantity > 80 AND oDet.ProductID = prod.ProductID
)
ORDER BY Produto;
