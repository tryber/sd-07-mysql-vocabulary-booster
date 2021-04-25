SELECT
ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products p
WHERE EXISTS (
SELECT ProductID, Quantity FROM w3schools.order_details d
WHERE p.ProductID = d.ProductID AND d.Quantity > 80
)
ORDER BY `Produto`;
