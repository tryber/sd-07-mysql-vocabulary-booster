SELECT c.contactname AS 'Nome de contato',
s.shippername AS 'Empresa que fez o envio',
o.orderdate AS 'Data do pedido'
FROM orders o
INNER JOIN shippers s
ON o.shipperid=s.shipperid
INNER JOIN customers c
ON o.customerid=c.customerid
WHERE shippername IN ('Speedy Express', 'United Package')
ORDER BY c.contactname, s.shippername, o.orderdate;
