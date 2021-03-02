SELECT
  products.ProductName AS 'Produto',
  products.Price AS 'Preço'
FROM
  order_details
  JOIN products ON products.ProductID = order_details.ProductID
WHERE
  order_details.Quantity > 80
ORDER BY
  products.ProductName;