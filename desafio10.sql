SELECT prod.ProductName AS "Produto",
MIN(ordD.Quantity) AS "Mínima",
MAX(ordD.Quantity) AS "Máxima",
ROUND(AVG(ordD.Quantity), 2) AS "Média"
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ordD
ON prod.ProductID = ordD.ProductID
GROUP BY prod.ProductName
HAVING Média > 20
ORDER BY Média, prod.ProductName;
