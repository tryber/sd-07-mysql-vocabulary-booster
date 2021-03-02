SELECT 
  PROD.ProductName AS 'Produto',
  MIN(ORD_DET.Quantity) AS 'Mínima',
  MAX(ORD_DET.Quantity) AS 'Máxima',
  ROUND(AVG(ORD_DET.Quantity), 2) AS 'Média'
FROM
  w3schools.products AS PROD
INNER JOIN
  w3schools.order_details AS ORD_DET
ON
  PROD.ProductID = ORD_DET.ProductID
GROUP BY
  PROD.ProductName
HAVING
  ROUND(AVG(ORD_DET.Quantity), 2) > 20.00
ORDER BY
  ROUND(AVG(ORD_DET.Quantity), 2), PROD.ProductName ASC;
