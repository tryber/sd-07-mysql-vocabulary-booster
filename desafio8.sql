SELECT c.CustomerName AS "Nome de contato",
s.ShipperName AS "Empresa que fez o envio",
o.OrderDate AS "Data do pedido"
FROM w3schools.customers c
INNER JOIN w3schools.orders o
ON c.CustomerID = o.CustomerID and o.ShipperID IN (1, 2)
INNER JOIN w3schools.shippers s
ON o.ShipperID = s.ShipperID
ORDER BY 1, 2, 3;
