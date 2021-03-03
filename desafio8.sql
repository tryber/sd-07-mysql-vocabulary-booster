SELECT CLIENTE.ContactName AS 'Nome de contato',
TRANSPORTADORA.ShipperName AS 'Empresa que fez o envio',
PEDIDO.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS CLIENTE
INNER JOIN w3schools.orders AS PEDIDO
ON PEDIDO.CustomerID = CLIENTE.CustomerID
INNER JOIN w3schools.shippers AS TRANSPORTADORA
ON TRANSPORTADORA.ShipperID = PEDIDO.ShipperID
WHERE TRANSPORTADORA.ShipperName ='Speedy Express' OR 'Unitade Package'
ORDER BY CLIENTE.ContactName, PEDIDO.OrderDate;
