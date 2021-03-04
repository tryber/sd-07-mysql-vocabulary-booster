SELECT PROD.ProductName AS 'Produto', 
PROD.Price AS 'Preço' 
FROM w3schools.products AS PROD
INNER JOIN w3schools.order_details AS O_DETAILS
ON PROD.ProductID = O_DETAILS.ProductID
WHERE O_DETAILS.Quantity > 80
ORDER BY PROD.ProductName;
