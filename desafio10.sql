SELECT P.ProductName `Produto`,
MIN(OD.Quantity)  `Mínima`,
MAX(OD.Quantity) `Máxima`,
ROUND(AVG(OD.Quantity), 2) `Média`
FROM w3schools.order_details OD, w3schools.products P
WHERE OD.ProductID=P.ProductID 
GROUP BY P.ProductID
HAVING AVG(OD.Quantity)>20
ORDER BY `Média`, `Produto`;
