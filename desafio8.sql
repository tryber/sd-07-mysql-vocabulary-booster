SELECT
cont.ContactName AS `Nome de contato`,
shi.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM
w3schools.orders AS ord
INNER JOIN w3schools.customers AS cont
ON ord.CustomerID = cont.CustomerID
INNER JOIN w3schools.shippers AS shi
ON ord.ShipperID = shi.ShipperID
WHERE
shi.ShipperName = 'Speedy Express'
OR shi.ShipperName = 'United Package'
ORDER BY
`Nome de contato` ASC,
`Empresa que fez o envio` ASC,
`Data do pedido` ASC;
