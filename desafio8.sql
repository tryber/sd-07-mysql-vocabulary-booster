SELECT cu.ContactName AS "Nome de contato",
sh.ShipperName AS "Empresa que fez o envio",
ord.OrderDate AS "Data do pedido"
FROM w3schools.customers AS cu
INNER JOIN w3schools.orders AS ord
ON cu.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS sh
ON sh.ShipperID = ord.ShipperID
WHERE sh.ShipperName = "Speedy Express" OR sh.ShipperName = "United Package" 
ORDER BY cu.ContactName, sh.ShipperName, ord.OrderDate;
