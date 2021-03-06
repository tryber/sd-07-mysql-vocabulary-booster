SELECT p.productname AS 'Produto',
MIN(odd.quantity) AS 'Mínima',
MAX(odd.quantity) AS 'Máxima',
ROUND(AVG(odd.quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS odd ON odd.productid = p.productid
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`
