SELECT
c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.orders orders
ON c.CustomerID = o.CustomerID
JOIN w3schools.shippers salary
ON o.ShipperID = s.ShipperID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY ContacctName, s.ShipperName, o.OrderDate;
