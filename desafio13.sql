SELECT 
prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM (
SELECT ProductName, Price
FROM w3schools.products AS Prod
INNER JOIN w3schools.order_details AS ord ON ord.ProductID = Prod.ProductID
WHERE Quantity > 80
) AS prod
ORDER BY prod.ProductName ASC;
