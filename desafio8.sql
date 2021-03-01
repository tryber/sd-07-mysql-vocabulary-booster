SELECT 
t2.CustomerName as `Nome de contato`,
t3.ShipperName as `Empresa que fez o envio`,
t1.OrderDate as `Data do pedido`
FROM orders as t1
INNER JOIN customers as t2
on t1.CustomerID = t2.CustomerID
INNER JOIN shippers as t3
on t1.ShipperID = t3.ShipperID
WHERE t3.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY t2.CustomerName, t3.ShipperName, t1.OrderDate;
