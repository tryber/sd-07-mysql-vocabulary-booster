SELECT w3schools.products.ProductName,
round(sum(w3schools.order_details.Quantity)/count(w3schools.order_details.Quantity),2),
min(w3schools.order_details.Quantity),
max(w3schools.order_details.Quantity)
from order_details
inner join w3schools.products
on order_details.ProductID = w3schools.products.ProductID
group by w3schools.products.ProductName
having round(sum(w3schools.order_details.Quantity)/count(w3schools.order_details.Quantity),2) > 20
order by sum(w3schools.order_details.Quantity)/count(w3schools.order_details.Quantity),
w3schools.products.ProductName;
