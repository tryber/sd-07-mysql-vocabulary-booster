select upper(concat(hre.first_name, " ", hre.last_name)) as "Nome completo",
hire_date as "Data de início",
hre.salary as "Salário"
from hr.employees as hre
inner join hr.departments as hrd
on hre.department_id = hrd.department_id
order by `Nome completo`, `Data de início` asc;
