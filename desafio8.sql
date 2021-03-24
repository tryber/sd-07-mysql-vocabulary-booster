SELECT 
C.ContactName as `Nome de contato`,
S.ShipperName as `Empresa que fez o envio`,
O.OrderDate as `Data do pedido`
FROM orders O
INNER JOIN customers C
ON O.CustomerID = C.CustomerID
INNER JOIN shippers S
ON O.ShipperID = S.ShipperID
WHERE ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
