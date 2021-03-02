SELECT
  ProductName AS 'Produto',
  Price AS 'Preço'
FROM
  w3schools.products AS PROD
INNER JOIN
  order_details AS ORD_DET
ON
  ORD_DET.ProductID = PROD.ProductID
WHERE
  ORD_DET.Quantity > 80
ORDER BY
  ProductName ASC;
