SELECT
    t2.productname AS "Produto",
    t2.price AS "Preço"
FROM w3schools.order_details AS t1
    JOIN w3schools.products AS t2 ON t1.productid = t2.productid
WHERE t1.quantity > 80
ORDER BY t2.productname;
