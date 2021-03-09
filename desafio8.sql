select
c.ContactName as 'Nome de contato',
s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido'
from w3schools.orders o
inner join w3schools.customers c on c.CustomerID = o.CustomerID
inner join w3schools.shippers s on s.ShipperID = o.ShipperID
where s.ShipperName in ('Speedy Express', 'United Package')
order by
1 ASC,
2 ASC,
3 ASC;
