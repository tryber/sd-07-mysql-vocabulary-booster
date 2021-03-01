SELECT p.productName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity),2) AS 'Média' FROM w3schools.orders AS o
INNER JOIN w3schools.order_details AS od ON o.OrderID = od.OrderID
INNER JOIN w3schools.products AS p ON p.ProductID = od.ProductID
GROUP BY p.productName
HAVING Média > 20.00
ORDER BY Média, Produto;
