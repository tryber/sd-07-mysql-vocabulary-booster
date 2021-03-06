SELECT prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ord_det
ON prod.ProductID = ord_det.ProductID
WHERE ord_det.Quantity > 80
ORDER BY `Produto`;
