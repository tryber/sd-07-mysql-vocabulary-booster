SELECT 
pd.ProductName AS Produto,
MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`,
ROUND(AVG(od.Quantity), 2) AS `Média`
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS pd
ON pd.ProductID = od.ProductID
GROUP BY pd.ProductID
HAVING AVG(od.Quantity) > 20
ORDER BY `Média`, Produto;
