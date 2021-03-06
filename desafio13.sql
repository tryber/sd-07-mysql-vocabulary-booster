SELECT pro.productname AS 'Produto',
pro.price AS 'Preço'
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS odd ON pro.productid = odd.productid
WHERE odd.quantity > 80
ORDER BY `Produto`;
