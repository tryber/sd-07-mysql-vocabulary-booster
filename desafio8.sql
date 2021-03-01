SELECT C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers S ON O.ShipperID = S.ShipperID
WHERE S.ShipperName LIKE 'Speedy Express' OR S.ShipperName LIKE 'United Package'
ORDER BY C.ContactName ASC,
S.ShipperName ASC, 
O.OrderDate ASC;
