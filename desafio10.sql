SELECT p.productname AS 'Produto',
MIN(quantity) AS 'Mínima',
MAX(quantity) AS 'Máxima',
ROUND(AVG(quantity), 2) AS 'Média'
FROM order_details o
INNER JOIN products p
ON o.productid=p.productid
GROUP BY p.productname
HAVING(AVG(quantity) > 20)
ORDER BY AVG(quantity), p.productname;
