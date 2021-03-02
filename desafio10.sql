SELECT
  prod.ProductName AS `Produto`,
  MIN(ord.Quantity) AS `Mínima`,
  MAX(ord.Quantity) AS `Máxima`,
  ROUND(AVG(ord.Quantity), 2) AS `Média`
FROM
  w3schools.order_details as ord
  INNER JOIN w3schools.products as prod
    ON ord.ProductID = prod.ProductID
GROUP BY
  `Produto`
HAVING
  `Média` > 20
ORDER BY
  `Média`,
  `Produto`;