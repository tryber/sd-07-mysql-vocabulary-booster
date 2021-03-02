SELECT p.ProductName as 'Produto',
p.Price as 'Preço'
FROM w3schools.order_details as d
inner join w3schools.products as p
on d.ProductID = p.ProductID
where Quantity > 80
order by p.ProductName;
