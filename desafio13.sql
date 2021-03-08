SELECT
PRODUCTS.ProductName AS 'Produto',
PRODUCTS.Price AS 'Preço'
FROM
w3schools.products AS PRODUCTS
INNER JOIN
w3schools.order_details AS ORDER_DETAILS ON ORDER_DETAILS.ProductID = PRODUCTS.ProductID
WHERE ORDER_DETAILS.Quantity > 80
ORDER BY `Produto` ASC;
