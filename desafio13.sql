SELECT prod.ProductName AS Produto, prod.price AS Preço FROM w3schools.products AS prod
WHERE 
EXISTS (SELECT * FROM w3schools.order_details AS ord
WHERE ord.Quantity > 80 AND ord.ProductID = prod.ProductID)
ORDER BY 1;
