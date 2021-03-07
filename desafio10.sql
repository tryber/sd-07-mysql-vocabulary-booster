SELECT p.ProductName AS Produto,
MIN(o_d.Quantity) AS Mínima,
MAX(o_d.Quantity) AS Máxima,
CAST(AVG(o_d.Quantity) AS DECIMAL(10,2)) AS Média
FROM w3schools.order_details AS o_d
INNER JOIN w3schools.products AS p
ON o_d.ProductID = p.ProductID
GROUP BY p.ProductID
HAVING Média  > 20
ORDER BY Média, Produto;
