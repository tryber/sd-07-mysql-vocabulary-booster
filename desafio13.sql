SELECT p.ProductName as 'Produto',
p.Price as 'Preço'
FROM w3schools.products as p
Inner join w3schools.order_details as o
on p.ProductID = o.ProductID
-- realmente não entendi group by, até aqui vai, quando coloca essa linha abaixo não vai mais
-- group by p.ProductName, parece que era só colocar o where, quando foi que "juntou"?;
where o.Quantity > 80
order by `Produto`;
