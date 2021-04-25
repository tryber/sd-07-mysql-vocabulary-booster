SELECT cust.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS cust
INNER JOIN w3schools.orders AS orders
ON cust.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers AS ship
ON orders.ShipperID = ship.ShipperID
WHERE ship.ShipperName = 'Speedy Express' OR ship.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido` ASC;
