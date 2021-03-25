SELECT custom.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS orders
INNER JOIN w3schools.customers AS custom ON custom.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers AS ship ON ship.ShipperID = orders.ShipperID
WHERE ship.ShipperName <> 'Federal Shipping'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
