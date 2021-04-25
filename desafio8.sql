SELECT
C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.orders O
JOIN w3schools.shippers S ON O.ShipperID = S.ShipperID
JOIN w3schools.customers C ON O.CustomerID = C.CustomerID
WHERE O.ShipperID = 1 OR O.ShipperID = 2
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
