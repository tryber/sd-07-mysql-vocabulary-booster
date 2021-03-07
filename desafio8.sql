SELECT (
SELECT ContactName
FROM w3schools.customers
WHERE w3schools.customers.CustomerID = w3schools.orders.CustomerID
) AS `Nome de contato`, (
SELECT ShipperName
FROM w3schools.shippers
WHERE w3schools.shippers.ShipperID = w3schools.orders.ShipperID
) AS `Empresa que fez o envio`
FROM w3schools.orders
WHERE w3schools.orders.ShipperID = 1
OR w3schools.orders.ShipperID = 2;
