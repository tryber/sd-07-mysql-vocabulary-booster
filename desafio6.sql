select (concat(e.First_name,' ',e.Last_Name)) as 'Nome completo',
j.job_title as Cargo,
h.START_DATE as 'Data de início do cargo',
d.DEPARTMENT_NAME as Departamento
from hr.employees as e
Inner join hr.jobs as j
on e.job_id = j.job_id
Inner join hr.job_history as h
on e.EMPLOYEE_ID = h.EMPLOYEE_ID
Inner join hr.departments as d
on h.DEPARTMENT_ID = d.DEPARTMENT_ID
order by concat(e.First_name,' ',e.Last_Name) desc, cargo;
