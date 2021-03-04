SELECT customers.ContactName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS customers
INNER JOIN w3schools.orders AS orders ON orders.CustomerID = customers.CustomerID
INNER JOIN w3schools.shippers AS shippers ON orders.ShipperID = shippers.ShipperID
WHERE orders.ShipperID = 1 OR orders.ShipperID = 2
ORDER BY customers.ContactName, shippers.ShipperName, orders.OrderDate;
