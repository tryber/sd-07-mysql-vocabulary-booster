SELECT
ProductName AS "Produto",
Price AS "Preço"
FROM w3schools.products
where ProductID IN (select
ProductID
From order_details
Where Quantity > 80)
order by ProductName asc;
