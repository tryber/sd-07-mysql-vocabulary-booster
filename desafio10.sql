SELECT products.ProductName AS "Produto",
MIN(orderdetails.Quantity) AS "Mínima",
MAX(orderdetails.Quantity) AS "Máxima",
ROUND(AVG(orderdetails.Quantity), 2) AS "Média"
FROM w3schools.order_details AS orderdetails
INNER JOIN w3schools.products AS products
ON orderdetails.ProductID = products.ProductID
GROUP BY products.ProductName
HAVING ROUND(AVG(orderdetails.Quantity), 2) > 20
ORDER BY 
  ROUND(AVG(orderdetails.Quantity), 2) ASC,
  products.ProductName ASC;
