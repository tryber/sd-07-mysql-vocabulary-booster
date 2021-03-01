SELECT 
custo.ContactName AS `Nome de contato`,
shp.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM w3schools.customers AS custo
INNER JOIN w3schools.orders AS ord
ON custo.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS shp
ON ord.ShipperID = shp.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
