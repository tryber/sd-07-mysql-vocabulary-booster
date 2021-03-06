select
c.ContactName as 'Nome de contato',
s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido'
from w3schools.customers as c
inner join w3schools.orders as o on o.CustomerID = c.CustomerID
inner join w3schools.shippers as s on s.ShipperID = o.ShipperID
where s.ShipperID = 1 or s.ShipperID = 2
order by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
