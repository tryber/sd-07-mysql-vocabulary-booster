SELECT t2.ContactName AS 'Nome de contato',
t3.ShipperName AS 'Empresa que fez o envio',
t1.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS t1
INNER JOIN w3schools.customers AS t2
ON t1.CustomerID = t2.CustomerID
INNER JOIN w3schools.shippers AS t3
ON t1.ShipperID = t3.ShipperID
WHERE t3.ShipperName = 'Speedy Express'
OR t3.ShipperName = 'United Package'
ORDER BY 1, 2, 3;
