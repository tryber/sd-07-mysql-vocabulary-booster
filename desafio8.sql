SELECT
CUSTOMERS.ContactName AS 'Nome de contato',
SHIPPERS.ShipperName AS 'Empresa que fez o envio',
ORDERS.OrderDate AS 'Data do pedido'
FROM
w3schools.customers AS CUSTOMERS
INNER JOIN
w3schools.orders AS ORDERS ON CUSTOMERS.CustomerID = ORDERS.CustomerID
INNER JOIN
w3schools.shippers AS SHIPPERS ON ORDERS.ShipperID = SHIPPERS.ShipperID
WHERE SHIPPERS.ShipperName IN ('Speedy Express' , 'United Package')
-- Referência: https://github.com/tryber/sd-07-mysql-vocabulary-booster/blob/ANDREHORMAN-MySQL-Vocabulary-Booster/desafio8.sql -- 
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC , `Data do pedido` ASC;
