SELECT ProductName AS Produto,
MIN(orderdet.Quantity) AS Mínima,
MAX(orderdet.Quantity) AS Máxima,
ROUND(AVG(orderdet.Quantity), 2) AS Média
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS orderdet
ON product.ProductID = orderdet.ProductID
GROUP BY orderdet.ProductID
HAVING Média > 20.00
ORDER BY 4, 1;
