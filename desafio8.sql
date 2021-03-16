SELECT wcust.CustomerName AS 'Nome de contato', wship.ShipperName AS 'Empresa que fez o envio', word.OrderDate AS 'Data do pedido'
FROM w3schools.orders word
INNER JOIN w3schools.customers wcust ON wcust.CustomerID = word.CustomerID
INNER JOIN w3schools.shippers wship ON wship.ShipperID = word.ShipperID
WHERE wship.ShipperName = 'Speedy Express' OR wship.ShipperName = 'United Package'
ORDER BY 1, 2, 3;
