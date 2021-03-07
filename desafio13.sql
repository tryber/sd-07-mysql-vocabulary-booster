SELECT w3schools.products.ProductName, w3schools.products.Price
FROM w3schools.order_details
inner join w3schools.products
on w3schools.order_details.ProductID = w3schools.products.ProductID
where Quantity > 80
order by w3schools.products.ProductName;
