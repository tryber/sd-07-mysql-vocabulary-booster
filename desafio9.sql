SELECT concat(e.FirstName, ' ', e.LastName) as 'Nome completo',
count(o.EmployeeID) as 'Total de pedidos'
FROM w3schools.employees as e
inner join w3schools.orders as o
on e.EmployeeID = o.EmployeeID
group by `Nome completo`
order by `Total de pedidos`;
