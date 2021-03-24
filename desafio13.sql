SELECT
  PRODUCT.ProductName AS 'Produto',
  PRODUCT.Price AS 'Preço'
FROM w3schools.products AS PRODUCT
INNER JOIN	w3schools.order_details AS DETAILS
ON PRODUCT.ProductID = DETAILS.ProductID
GROUP BY PRODUCT.ProductID
HAVING MAX(DETAILS.Quantity) > 80
ORDER BY 1;
