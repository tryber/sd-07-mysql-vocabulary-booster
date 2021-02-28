SELECT
	c.contactname AS 'Nome de contato',
    s.shippername AS 'Empresa que fez o envio',
    o.orderdate AS 'Data do pedido'
FROM w3schools.orders AS o
JOIN w3schools.customers AS c
	ON o.customerid = c.customerid
JOIN w3schools.shippers AS s
	ON o.shipperid = s.shipperid
WHERE s.shippername IN ('Speedy Express', 'United Package')
ORDER BY c.contactname, s.shippername, o.orderdate;
