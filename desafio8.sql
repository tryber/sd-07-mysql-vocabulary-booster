SELECT C.ContactName `Nome de contato`,
S.ShipperName `Empresa que fez o envio`,
O.OrderDate `Data do pedido`
FROM w3schools.shippers S, w3schools.customers C, w3schools.orders O
WHERE C.CustomerID=O.CustomerID AND S.ShipperID=O.ShipperID
AND S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`;
