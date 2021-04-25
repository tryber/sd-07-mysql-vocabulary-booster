SELECT prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM w3schools.order_details AS det
INNER JOIN w3schools.products AS prod
ON prod.ProductID = det.ProductID
WHERE det.Quantity > 80
ORDER BY `Produto`;
