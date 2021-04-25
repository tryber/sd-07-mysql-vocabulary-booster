SELECT PROD.ProductName "Produto",
ROUND(PROD.Price, 2) AS "Preço"
FROM w3schools.order_details AS ORD
INNER JOIN w3schools.products AS PROD
ON PROD.ProductID = ORD.ProductID
WHERE ORD.Quantity > 80
ORDER BY PROD.ProductName;
