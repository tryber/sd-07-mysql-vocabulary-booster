SELECT
ContactName 'Nome de contato',
orders.OrderDate 'Data do pedido',
ShipperName 'Empresa que fez o envio'
FROM w3schools.customers ctms
RIGHT JOIN w3schools.orders orders
ON orders.CustomerID = ctms.customerID
INNER JOIN w3schools.shippers sps
ON sps.ShipperID = orders.ShipperID
WHERE sps.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`; --
