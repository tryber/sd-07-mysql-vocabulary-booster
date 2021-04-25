select c.ContactName as 'Nome de contato',
s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido'
from w3schools.orders as o
inner join w3schools.shippers as s
on s.ShipperID = o.ShipperID
inner join w3schools.customers as c
on c.CustomerID = o.CustomerID
where o.ShipperID between 1 and 2
order by `Nome de contato`,
`Empresa que fez o envio`,
`Data do pedido`;
