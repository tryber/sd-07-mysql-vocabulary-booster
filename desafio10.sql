SELECT
products.ProductName AS Produto,
MIN(order_details.Quantity) AS Mínima,
MAX(order_details.Quantity) AS Máxima,
ROUND(SUM(order_details.Quantity)/count(order_details.Quantity), 2) AS Média
FROM w3schools.order_details
INNER JOIN products ON order_details.ProductID = products.ProductID
GROUP BY products.ProductName
HAVING ROUND(SUM(order_details.Quantity)/count(order_details.Quantity), 2) > '20.00'
ORDER BY 4 asc, 1 asc;
