select 
concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS Cargo,
history.START_DATE AS 'Data de início',
departments.DEPARTMENT_NAME AS Departamento

from hr.job_history as history
left join hr.employees as employees
on history.EMPLOYEE_ID = employees.EMPLOYEE_ID
right join hr.jobs AS jobs
on history.JOB_ID = jobs.JOB_ID
right join hr.departments AS departments
on history.DEPARTMENT_ID = departments.DEPARTMENT_ID
where month(history.START_DATE) in (1,2,3)
order by 1 desc,2;
