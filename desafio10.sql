select
p.ProductName as 'Produto',
min(od.Quantity) as 'Mínima',
max(od.Quantity) as 'Máxima',
CAST(avg(od.Quantity) AS DECIMAL(10,2)) as 'Média'
from w3schools.products p
inner join order_details od on od.ProductID = p.ProductID
where (select avg(Quantity) from order_details where ProductID = p.ProductID) > 20
group by od.ProductID
order by
4 ASC,
1 ASC;
