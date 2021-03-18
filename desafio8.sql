SELECT
customers.ContactName AS "Nome de contato",
shippers.ShipperName AS "Empresa que fez o envio",
OrderDate AS "Data do pedido"
FROM w3schools.orders
INNER JOIN customers ON orders.CustomerID = customers.CustomerID
INNER JOIN shippers ON orders.ShipperID = shippers.ShipperID
WHERE orders.shipperID in ("1", "2")
ORDER BY 1 ASC, 2 ASC, 3 ASC;
