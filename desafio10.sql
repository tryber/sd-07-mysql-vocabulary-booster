SELECT
pro.ProductName AS `Produto`,
MIN(ord.Quantity) AS `Mínima`,
MAX(ord.Quantity) As `Máxima`,
ROUND(AVG(ord.Quantity), 2) AS `Média`
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS ord
ON pro.ProductID = ord.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;

-- Duration / Fetch
-- 0,117 sec / 0,000029 sec

-- Query Cost: 189.25
