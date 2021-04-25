SELECT prod.ProductName AS "Produto",
prod.Price AS "Preço"
FROM w3schools.products AS prod
JOIN w3schools.order_details AS ordD
ON prod.ProductID = ordD.ProductID
WHERE ordD.Quantity > 80
ORDER BY Produto;
