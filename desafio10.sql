SELECT P.ProductName AS 'Produto',
MIN(Q.Quantity) AS 'Mínima', MAX(Q.Quantity) AS 'Máxima', ROUND(AVG(Q.Quantity),2) AS 'Média'
FROM w3schools.order_details AS Q
INNER JOIN w3schools.products AS P
ON Q.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING ROUND(AVG(Q.Quantity),2) > '20.00'
ORDER BY ROUND(AVG(Q.Quantity),2), P.ProductName;
