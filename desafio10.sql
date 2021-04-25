SELECT
pro.ProductName AS `Produto`,
MIN(det.Quantity) AS `Mínima`,
MAX(det.Quantity) AS `Máxima`,
ROUND(AVG(det.Quantity), 2) AS `Média`
FROM w3schools.products pro
INNER JOIN w3schools.order_details AS det
ON pro.ProductID = det.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
