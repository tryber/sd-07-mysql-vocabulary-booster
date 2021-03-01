SELECT p.ProductName "Produto", 
	MIN(od.Quantity) "Mínima",
    MAX(od.Quantity) "Máxima",
    ROUND(AVG(od.Quantity), 2) AS "Média"
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od ON od.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING Média > 20
ORDER BY Média, Produto;
