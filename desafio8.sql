
select 
customers.CustomerName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate  AS 'Data do pedido'
from w3schools.customers as customers 
INNER JOIN  w3schools.orders as orders
on customers.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers as shippers
on shippers.ShipperId = orders.ShipperID
where orders.ShipperID <>3
order by customers.CustomerName, shippers.ShipperName, orders.OrderDate;
