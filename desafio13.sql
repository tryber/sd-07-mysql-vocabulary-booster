select wp.ProductName as "Produto",
wp.Price as "Preço"
from w3schools.products as wp
inner join w3schools.order_details as wod
on wp.ProductID = wod.ProductID and wod.Quantity > 80
order by `Produto`;
