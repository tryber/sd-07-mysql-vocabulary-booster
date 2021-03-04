SELECT t3.ContactName AS `Nome de Contato`, t2.ShipperName AS `Empresa que fez o envio`, DATE(t1.OrderDate) AS `Data do pedido`
FROM w3schools.orders AS t1
INNER JOIN w3schools.shippers AS t2
ON t1.ShipperID = t2.ShipperID
INNER JOIN w3schools.customers AS t3
ON t1.CustomerID = t3.CustomerID
HAVING `Empresa que fez o envio` = 'Speedy Express' OR `Empresa que fez o envio` = 'United Package'
ORDER BY `Nome de Contato`, `Empresa que fez o envio`, `Data do pedido`;
