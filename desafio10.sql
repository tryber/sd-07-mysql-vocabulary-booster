SELECT Produto, Mínima, Máxima, Média from 
(SELECT ProductName AS Produto, 
MIN(O.Quantity) AS Mínima, 
MAX(O.Quantity) AS Máxima, 
ROUND(AVG(O.Quantity),2) AS Média
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O ON P.ProductID = O.ProductID
GROUP BY Produto
ORDER BY ROUND(AVG(O.Quantity),2),Produto ASC) AS SubQueryTable
WHERE SubQueryTable.Média > 20;
