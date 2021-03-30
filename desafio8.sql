SELECT
c.ContactName AS 'Nome de contato',
orders.OrderDate AS 'Empresa que fez o envio',
s.ShipperName AS 'Data do pedido'
FROM w3schools.orders orders
LEFT JOIN w3schools.shippers s
ON s.ShipperID = orders.ShipperID
LEFT JOIN w3schools.customers c
ON orders.CustomerID = c.CustomerID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
