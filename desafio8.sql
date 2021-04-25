SELECT
    t2.contactname AS "Nome de contato",
    t3.shippername AS "Empresa que fez o envio",
    t1.orderdate AS "Data do pedido"
FROM w3schools.orders AS t1
    JOIN w3schools.customers AS t2
    JOIN w3schools.shippers AS t3
WHERE
    t1.customerid = t2.customerid AND
    t1.shipperid = t3.shipperid AND
    t3.shippername IN ("Speedy Express", "United Package")
ORDER BY t2.contactname, t3.shippername, t1.orderdate;
