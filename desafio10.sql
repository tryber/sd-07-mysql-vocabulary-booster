SELECT DISTINCT t2.ProductName AS `Produto`, (SELECT MIN(Quantity) FROM w3schools.order_details WHERE ProductID = t2.ProductID) AS `Mínima`, (SELECT MAX(Quantity) FROM w3schools.order_details WHERE ProductID = t2.ProductID) AS `Máxima`, (SELECT ROUND(AVG(Quantity), 2) FROM w3schools.order_details WHERE ProductID = t2.ProductID) AS `Média`
FROM w3schools.order_details as t1
INNER JOIN w3schools.products as t2
ON t1.ProductID = t2.ProductID
WHERE (SELECT ROUND(AVG(Quantity), 2) FROM w3schools.order_details WHERE ProductID = t2.ProductID) > 20.00
ORDER BY `Média`, `Produto`;
