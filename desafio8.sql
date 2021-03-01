SELECT C.ContactName AS `Nome do contato`,
SHIPPER.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.shippers AS SHIPPER ON SHIPPER.ShipperID = O.ShipperID
WHERE SHIPPER.ShipperName = 'Speedy Express' OR SHIPPER.ShipperName = 'United Package'
ORDER BY `Nome do contato`,`Empresa que fez o envio`, `Data do pedido`;
