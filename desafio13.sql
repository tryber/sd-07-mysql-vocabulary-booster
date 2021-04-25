SELECT
pro.ProductName AS `Produto`,
pro.Price AS `Preço`
FROM w3schools.order_details AS ode
INNER JOIN w3schools.products AS pro
ON ode.ProductID = pro.ProductID
WHERE ode.Quantity > 80
ORDER BY `Produto`;
