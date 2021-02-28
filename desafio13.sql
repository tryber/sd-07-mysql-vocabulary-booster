SELECT
  p.productname AS 'Produto',
  p.price AS 'Preço'
FROM w3schools.order_details AS od
JOIN w3schools.products AS p
  ON od.productid = p.productid
WHERE od.quantity > 80
ORDER BY p.productname;
