SELECT 
(SELECT ContactName FROM w3schools.customers WHERE CustomerID = o.CustomerID) "Nome de contato",
(SELECT ShipperName FROM w3schools.shippers WHERE ShipperID = o.ShipperID) "Empresa que fez o envio",
o.OrderDate AS "Data do pedido"
FROM w3schools.orders AS o
WHERE o.ShipperID = 1 OR o.ShipperID = 2
ORDER BY `Nome de contato`, `Empresa que fez o envio`, o.OrderDate;
