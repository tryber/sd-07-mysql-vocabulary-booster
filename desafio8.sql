SELECT customers.ContactName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS orders
INNER JOIN w3schools.customers AS customers ON customers.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers AS shippers ON shippers.ShipperId = orders.ShipperID
WHERE shippers.ShipperID = 1 OR shippers.ShipperID = 2
ORDER BY ContactName, ShipperName;
