SELECT cst.ContactName AS 'Nome de contato', shp.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido' FROM w3schools.customers AS cst 
INNER JOIN w3schools.orders AS ord
    ON ord.CustomerID = cst.CustomerID
INNER JOIN w3schools.shippers AS shp 
    ON shp.ShipperID = ord.ShipperID
WHERE shp.ShipperName IN('Speedy Express', 'United Package') 
ORDER BY cst.ContactName, shp.ShipperName, ord.OrderDate;
