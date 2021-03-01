SELECT 
C.CustomerName as `Nome de contato`,
S.ShipperName as `Empresa que fez o envio`,
O.OrderDate as `Data do pedido`
FROM orders as O
INNER JOIN customers as C
on O.CustomerID = C.CustomerID
INNER JOIN shippers as S
on O.ShipperID = S.ShipperID
WHERE S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY C.CustomerName, S.ShipperName, O.OrderDate;
