SELECT 
    products.ProductName AS 'Produto',
    products.Price AS 'Preço'
FROM
    w3schools.products AS products,
    w3schools.order_details AS details
WHERE
    details.ProductID = products.ProductID
        AND details.Quantity > 80
ORDER BY `products`;
