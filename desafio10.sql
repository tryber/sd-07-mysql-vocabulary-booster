SELECT ProductName AS 'Produto',
  MIN(Quantity) AS 'Mínima',
  MAX(Quantity) AS 'Máxima',
  ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.products AS p
  JOIN w3schools.order_details AS o_d ON p.ProductID = o_d.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`,
  `Produto`;
