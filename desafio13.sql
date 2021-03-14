SELECT pro.productname AS "Produto",
pro.price AS "Preço"
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS ord
ON pro.productid = ord.productid
WHERE ord.Quantity > 80
ORDER BY pro.productname;
