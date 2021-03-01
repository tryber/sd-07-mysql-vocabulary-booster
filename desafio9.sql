select
concat(emp.FirstName, " ", emp.LastName) as "Nome completo",
count(*) as "Total de pedidos"
from w3schools.orders as ord
inner join w3schools.employees as emp
on emp.EmployeeID = ord.EmployeeID
group by ord.EmployeeID
order by count(*);
