SELECT CustomerName AS 'Nome de contato',
ShipperName AS 'Empresa que fez o envio',
OrderDate As 'Data do pedido'
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers AS S ON S.ShipperID = O.ShipperID
ORDER BY CustomerName,ShipperName,OrderDate;
