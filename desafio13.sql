SELECT
  prod.ProductName AS 'Produto',
  prod.Price AS 'Preço'
FROM w3schools.products AS prod
INNER JOIN (
  SELECT * FROM w3schools.order_details
  WHERE Quantity > 80
  ) AS ord ON prod.ProductID = ord.ProductID
ORDER BY `Produto`;
