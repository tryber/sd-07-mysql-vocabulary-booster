SELECT products.ProductName AS "Produto" , products.Price AS "Preço" FROM w3schools.order_details AS order_data
INNER JOIN w3schools.products AS products
ON products.ProductID = order_data.ProductID
WHERE Quantity > 80
ORDER BY Produto;
