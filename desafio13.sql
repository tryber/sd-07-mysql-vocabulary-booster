SELECT products.ProductName AS Produto, products.price AS Preço
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS order_details ON products.ProductID = order_details.ProductID
GROUP BY products.ProductID
HAVING MAX(order_details.quantity) > 80
ORDER BY products.ProductName;
