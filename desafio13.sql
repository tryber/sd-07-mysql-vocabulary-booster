USE w3schools;
SELECT productname AS 'Produto',
price AS 'Preço'
FROM order_details o
INNER JOIN products p
ON o.productid = p.productid
WHERE o.quantity > 80
ORDER BY productname;
