SELECT 
products.ProductName AS Produto,
MIN(details.Quantity) AS Mínima ,
MAX(details.Quantity) AS Máxima,
round(avg(details.Quantity),2) AS Média
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS details
ON products.ProductID = details.ProductID
GROUP BY products.ProductName
ORDER BY round(avg(details.Quantity),2), products.ProductName;
