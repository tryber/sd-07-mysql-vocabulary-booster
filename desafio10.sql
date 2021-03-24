SELECT 
  PRODUCTS.ProductName AS 'Produto',
  MIN(DETAILS.Quantity) AS 'Mínima',
  MAX(DETAILS.Quantity) AS 'Máxima',
  ROUND(AVG(DETAILS.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS DETAILS
INNER JOIN w3schools.products AS PRODUCTS
ON PRODUCTS.ProductID = DETAILS.ProductID
GROUP BY PRODUCTS.ProductName
HAVING ROUND(AVG(DETAILS.Quantity), 2) > 20.00
ORDER BY 4, 1;
