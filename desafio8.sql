SELECT
c1.ContactName AS "Nome de contato",
c3.ShipperName AS "Empresa que fez o envio",
c2.OrderDate AS "Data do pedido"
FROM w3schools.customers AS c1
INNER JOIN w3schools.orders AS c2 ON c1.CustomerID = c2.CustomerID
INNER JOIN w3schools.shippers AS c3 ON c2.CustomerID = c3.ShipperID
WHERE c3.ShipperName IN ("Speedy Express", "United Package")
ORDER BY c1.ContactName ASC, c3.ShipperName ASC, c2.OrderDate ASC;
