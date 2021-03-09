SELECT Produto.ProductName AS Produto,
MAX(ord_det.Quantity) AS "Máxima",
MIN(ord_det.Quantity) AS "Mínima",
ROUND(AVG(ord_det.Quantity),2) AS "Média"
FROM w3schools.order_details AS ord_det
INNER JOIN w3schools.products AS Produto
ON Produto.ProductID = ord_det.ProductID
GROUP BY ord_det.ProductID
HAVING `Média` > 20
ORDER BY `Média`,Produto;