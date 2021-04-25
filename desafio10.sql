SELECT
    t2.productname AS 'Produto',
    MIN(t1.quantity) AS 'Mínima',
    MAX(t1.quantity) AS 'Máxima',
    ROUND(AVG(t1.quantity), 2) AS 'Média'
FROM w3schools.order_details AS t1
    JOIN w3schools.products AS t2
WHERE t1.productid = t2.productid
GROUP BY t1.productid
HAVING ROUND(AVG(t1.quantity), 2) > 20
ORDER BY ROUND(AVG(t1.quantity), 2), t2.productname;
