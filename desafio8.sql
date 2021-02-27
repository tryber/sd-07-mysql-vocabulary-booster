SELECT
cus.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
INNER JOIN w3schools.shippers AS ship ON ord.ShipperID = ship.ShipperID
INNER JOIN w3schools.customers AS cus ON ord.CustomerID = cus.CustomerID
WHERE ord.ShipperID IN(1, 2)
ORDER BY cus.ContactName, ship.ShipperName, ord.OrderDate;
