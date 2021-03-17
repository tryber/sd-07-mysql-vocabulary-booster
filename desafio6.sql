select concat(hre.first_name, " ", hre.last_name) as "Nome completo",
hrj.job_title as "Cargo",
hire_date as "Data de início do cargo",
hrd.department_name as "Departamento"
from hr.employees as hre
inner join hr.jobs as hrj
on hre.job_id = hrj.job_id
inner join hr.departments as hrd
on hre.department_id = hrd.department_id
order by `Nome completo`, `Cargo` asc;
