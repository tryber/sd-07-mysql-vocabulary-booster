select upper(concat(hre.first_name, " ", hre.last_name)) as "Nome completo",
hrjh.start_date as "Data de início",
hre.salary as "Salário"
from hr.employees as hre
inner join hr.job_history as hrjh
on hre.employee_id = hrjh.employee_id
order by `Nome completo`, `Data de início` asc;
