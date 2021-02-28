SELECT
prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS prod
ON od.ProductID = prod.ProductID
WHERE od.Quantity > 80
ORDER BY prod.ProductName;
