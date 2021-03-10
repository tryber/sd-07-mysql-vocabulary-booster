SELECT customers.ContactName as `Nome de contato`,
shippers.ShipperName as `Empresa que fez o envio`,
orders.OrderDate as `Data do pedido`
FROM w3schools.customers AS customers
INNER JOIN w3schools.orders AS orders
ON customers.CustomerID = orders.CustomerID
JOIN w3schools.shippers AS shippers
ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName = 'Speedy Express' OR shippers.ShipperName = 'United Package' 
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
