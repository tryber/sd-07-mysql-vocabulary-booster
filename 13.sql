-- Desafio 13

SELECT p.ProductName AS 'Produto', p.Price As 'Preço' 
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON od.ProductID = p.ProductID
WHERE od.Quantity > 80
ORDER BY p.ProductName;
