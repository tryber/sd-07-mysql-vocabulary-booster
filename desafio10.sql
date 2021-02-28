USE w3schools;
SELECT
ProductName AS Produto,
MIN(ORDER_DETAILS.Quantity) AS 'Mínima',
MAX(ORDER_DETAILS.Quantity) AS 'Máxima',
ROUND(AVG(ORDER_DETAILS.Quantity), 2) AS 'Média'
FROM products AS PRODUCTS
INNER JOIN order_details AS ORDER_DETAILS ON PRODUCTS.ProductID = ORDER_DETAILS.ProductID
GROUP BY PRODUCTS.ProductID
HAVING Média > 20.00
ORDER BY `Média`, `Produto`;
