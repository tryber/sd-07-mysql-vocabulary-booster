SELECT N.ContactName AS 'Nome de contato',
E.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS O 
INNER JOIN w3schools.customers AS N 
ON N.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers AS E
ON O.ShipperID = E.ShipperID
WHERE E.ShipperName='Speedy Express' OR E.ShipperName='United Package'
ORDER BY N.ContactName, E.ShipperName, O.OrderDate;
