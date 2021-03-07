SELECT P.ProductName AS "Produto",
P.Price AS "Preço"
FROM w3schools.products AS P
WHERE EXISTS (
SELECT * FROM w3schools.order_details AS O
WHERE P.ProductID = O.ProductID
AND O.Quantity > 80
)
ORDER BY P.ProductName;
