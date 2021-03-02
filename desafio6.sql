select 
concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS Cargo,
history.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS Departamento

from hr.job_history as history
inner join hr.employees as employees
on history.EMPLOYEE_ID = employees.EMPLOYEE_ID
inner join hr.jobs AS jobs
on history.JOB_ID = jobs.JOB_ID
inner join hr.departments AS departments
on history.DEPARTMENT_ID = departments.DEPARTMENT_ID
order by 1 desc,2;
