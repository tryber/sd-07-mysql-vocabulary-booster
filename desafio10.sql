SELECT p.ProductName AS "Produto",
MIN(d.Quantity) AS "Mínima",
MAX(d.Quantity) AS "Máximo",
ROUND(AVG(d.Quantity), 2) AS "Média"
FROM w3schools.products AS p
INNER JOIN w3schools.order_details d
ON p.ProductID = d.ProductID
GROUP BY (d.ProductID)
HAVING ROUND(AVG(d.Quantity), 2) > 20
ORDER BY 4,1;
