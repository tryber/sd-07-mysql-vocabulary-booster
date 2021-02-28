SELECT CUST.ContactName "Nome de contato",
SHI.ShipperName "Empresa que fez o envio",
ORD.OrderDate "Data do pedido"
FROM w3schools.orders ORD
INNER JOIN w3schools.customers CUST
ON ORD.CustomerID = CUST.CustomerID
INNER JOIN w3schools.shippers SHI
ON ORD.ShipperID = SHI.ShipperID
WHERE SHI.ShipperName = "Speedy Express" OR SHI.ShipperName = "United Package"
ORDER BY CUST.ContactName, SHI.ShipperName, ORD.OrderDate;