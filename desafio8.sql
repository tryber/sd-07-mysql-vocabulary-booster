SELECT c.CustomerName as 'Nome de contato',
s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido' FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID
WHERE s.ShipperName IN('Speedy Express', 'United Package')
ORDER BY c.CustomerName, s.ShipperName, o.OrderDate DESC;
