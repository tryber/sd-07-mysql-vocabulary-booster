SELECT cust.ContactName AS 'Nome de contato',
ships.ShipperName AS 'Empresa que fez o envio',
orde.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS orde
INNER JOIN w3schools.customers AS cust ON cust.CustomerID = orde.CustomerID
INNER JOIN w3schools.shippers AS ships ON ships.ShipperID = orde.ShipperID
WHERE orde.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
