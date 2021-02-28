SELECT
	p.productname AS 'Produto',
    MIN(od.quantity) AS 'Mínima',
    MAX(od.quantity) AS 'Máxima',
    ROUND(AVG(od.quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
JOIN w3schools.products AS p
	ON od.productid = p.productid
GROUP BY od.productid
HAVING `Média` > 20
ORDER BY `Média`, p.productname;
