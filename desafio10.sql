SELECT pro.ProductName AS "Produto",
MIN(ord.Quantity) AS "Mínimo",
MAX(ord.Quantity) AS "Máxima",
ROUND(AVG(ord.Quantity), 2) AS "Média"
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS ord
ON ord.ProductID = pro.ProductID
GROUP BY pro.ProductName
HAVING Média > 20
ORDER BY ROUND(AVG(ord.Quantity), 2), pro.ProductName;
