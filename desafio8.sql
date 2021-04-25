SELECT c.ContactName AS 'Nome de contato', s.ShipperName AS 'Empresa que fez o envio', o.OrderDate AS 'Data do pedido' FROM w3schools.customers c
INNER JOIN w3schools.orders o
ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers s
ON o.ShipperID = s.ShipperID
WHERE s.ShipperName in ('Speedy Express', 'United Package')
ORDER BY 1, 2, 3;
