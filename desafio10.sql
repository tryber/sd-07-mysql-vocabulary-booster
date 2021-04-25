SELECT prod.ProductName AS Produto,
MIN(det.Quantity) AS Mínima,
MAX(det.Quantity) AS Máxima,
ROUND(AVG(det.Quantity), 2) AS Média
FROM w3schools.order_details AS det
INNER JOIN w3schools.products AS prod
ON prod.ProductID = det.ProductID
GROUP BY prod.ProductName
HAVING `Média` > 20
ORDER BY 4, 1;
