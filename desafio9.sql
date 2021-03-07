select
concat(e.FirstName, ' ', e.LastName) as 'Nome completo',
count(o.EmployeeID) as 'Total de pedidos'
from w3schools.employees e
left join w3schools.orders o on o.EmployeeID = e.EmployeeID
group by 1
order by 2 ASC;
