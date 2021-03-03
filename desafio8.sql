SELECT c.ContactName AS "Nome de contato", 
s.ShipperName AS "Empresa que fez o envio", 
o.OrderDate AS "Data do pedido"
FROM w3schools.orders AS o 
INNER JOIN w3schools.customers AS c
ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS s
ON s.ShipperID = o.ShipperID AND s.ShipperName = "Speedy Express" OR s.ShipperName = "United Package"
ORDER BY 1,2;
