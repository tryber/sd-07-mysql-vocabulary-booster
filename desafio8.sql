SELECT cus.ContactName AS `Nome de contato`,
shi.ShipperName AS  `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM w3schools.customers AS cus
INNER JOIN w3schools.orders AS ord
ON cus.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS shi
ON shi.ShipperID = ord.ShipperID
WHERE shi.ShipperName = "Speedy Express" OR shi.ShipperName = "United Package"
ORDER BY `Nome de contato`,`Empresa que fez o envio`,`Data do pedido`;
