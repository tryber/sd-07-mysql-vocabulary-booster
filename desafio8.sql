SELECT CUST.ContactName AS "Nome de contato",
SHIP.ShipperName AS "Empresa que fez o envio",
DATE(ORD.OrderDate) AS "Data do pedido"
FROM w3schools.orders AS ORD
INNER JOIN w3schools.customers AS CUST
ON ORD.CustomerID = CUST.CustomerID
INNER JOIN w3schools.shippers AS SHIP
ON ORD.ShipperID = SHIP.ShipperID
HAVING `Empresa que fez o envio` = 'Speedy Express' OR `Empresa que fez o envio` = 'United Package'
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido`;
