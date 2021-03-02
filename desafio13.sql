USE w3schools;
SELECT productname AS 'Produto',
price AS 'Preço'
FROM w3schools.order_details o
INNER JOIN w3schools.products p
ON o.productid = p.productid
WHERE o.quantity > 80
ORDER BY productname;
