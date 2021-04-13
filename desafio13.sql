SELECT p.ProductName as 'Produto',
p.Price as 'Preço',
o.Quantity
FROM w3schools.products as p
Inner join w3schools.order_details as o
on p.ProductID = o.ProductID
group by p.ProductName;
-- realmente não entendi group by
