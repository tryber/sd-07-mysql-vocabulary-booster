SELECT
	pro.ProductName AS `Produto`,
    (
		SELECT MIN(ord.Quantity)
        FROM w3schools.order_details AS ord
        WHERE ord.ProductID = pro.ProductID
    ) AS `Mínimo`,
    (
		SELECT MAX(ord.Quantity)
        FROM w3schools.order_details AS ord
        WHERE ord.ProductID = pro.ProductID
    ) AS `Máximo`,
    (
		SELECT (ROUND(AVG(ord.Quantity), 2))
        FROM w3schools.order_details AS ord
        WHERE ord.ProductID = pro.ProductID
    ) AS `Média`
FROM w3schools.products AS pro
WHERE (
		SELECT (ROUND(AVG(ord.Quantity), 2))
        FROM w3schools.order_details AS ord
        WHERE ord.ProductID = pro.ProductID
    ) > 20
ORDER BY `Média`;
