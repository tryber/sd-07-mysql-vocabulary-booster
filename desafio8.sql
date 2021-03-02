SELECT 
    c.contactname AS 'Nome de contato',
    s.shippername AS 'Empresa que fez o envio',
    o.orderdate AS 'Data do pedido'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON o.CustomerId = c.CustomerId
        INNER JOIN
    w3schools.shippers AS s ON o.ShipperId = s.ShipperId
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
