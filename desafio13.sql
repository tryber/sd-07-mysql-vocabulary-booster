select
p.ProductName as 'Produto',
p.Price
from w3schools.order_details od
inner join w3schools.products p on p.ProductID = od.ProductID 
where Quantity > 80
order by
1 ASC;