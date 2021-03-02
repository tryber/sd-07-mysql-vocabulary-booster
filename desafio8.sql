SELECT CUST.CustomerName AS "Nome de contato",
SHIP.ShipperName AS "Empresa que fez o envio",
ORD.OrderDate AS "Data do pedido"
FROM w3schools.customers AS CUST
INNER JOIN w3schools.orders AS ORD
ON CUST.CustomerID = ORD.CustomerID
INNER JOIN w3schools.shippers AS SHIP
ON SHIP.ShipperID = ORD.ShipperID
WHERE SHIP.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
