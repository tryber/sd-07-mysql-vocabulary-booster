
SELECT pdts.ProductName 'Produto', pdts.Price 'Preço' FROM w3schools.order_details order_d
LEFT JOIN w3schools.products pdts
ON pdts.ProductID = order_d.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
