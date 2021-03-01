SELECT CUST.CustomerName AS "Nome de contato",
SHIP.ShipperName AS "Empresa que fez o envio",
ORD.OrderDate AS "Data do pedido"
FROM w3schools.customers AS CUST
INNER JOIN w3schools.shippers AS SHIP
INNER JOIN w3schools.orders AS ORD
ON CUST.CustomerID = ORD.CustomerID AND SHIP.ShipperID = ORD.ShipperID
ORDER BY CUST.CustomerID ASC, SHIP.ShipperName ASC, ORD.OrderDate ASC;
