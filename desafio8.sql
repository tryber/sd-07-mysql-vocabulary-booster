SELECT 
c.CustomerName AS `Nome do contato`, 
s.ShipperName  AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM orders AS o
INNER JOIN customers AS c ON
o.CustomerID = c.CustomerID
INNER JOIN shippers AS s ON
o.ShipperID = s.ShipperID
WHERE s.ShipperName = 'Speedy Express' 
OR s.ShipperName = 'United Package'
ORDER BY `Nome do contato`, `Data do pedido`;
