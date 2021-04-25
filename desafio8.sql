SELECT c.contactname AS 'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
od.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS od ON c.customerid = od.customerid
INNER JOIN w3schools.shippers AS sh on od.shipperid = sh.shipperid
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`
