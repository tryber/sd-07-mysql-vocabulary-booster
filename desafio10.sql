SELECT p.ProductName as 'Produto',
min(o.Quantity) as 'Mínima',
max(o.Quantity) as 'Máxima',
round(avg(Quantity), 2) as 'Média'
FROM w3schools.order_details as o
inner join w3schools.products as p
on o.ProductID = p.ProductID
group by o.ProductID
having `Média` > 20.00
order by `Média`, p.ProductName asc;
