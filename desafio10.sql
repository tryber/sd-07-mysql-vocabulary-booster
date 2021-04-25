SELECT PRO.ProductName Produto,
MIN(ORD.Quantity) Mínima,
MAX(ORD.Quantity) Máxima,
ROUND(AVG(ORD.Quantity), 2) Média
FROM w3schools.products PRO
INNER JOIN w3schools.order_details ORD
ON PRO.ProductID = ORD.ProductID
GROUP BY PRO.ProductName
HAVING ROUND(AVG(ORD.Quantity), 2) > 20
ORDER BY AVG(ORD.Quantity), PRO.ProductName;
