SELECT
ContactName AS 'Nome de contato',
s.ShipperName AS 'Nome de contato',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers c
JOIN w3schools.orders o
ON c.CustomerID = o.CustomerID
JOIN w3schools.shippers s
ON o.ShipperID = s.ShipperID
ORDER BY ContactName, s.ShipperName, o.OrderDate;
