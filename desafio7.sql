select 
UCASE(concat(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
history.START_DATE AS 'Data de início',
employees.SALARY AS Salário
from hr.job_history as history
left join hr.employees as employees
on history.EMPLOYEE_ID = employees.EMPLOYEE_ID
where month(history.START_DATE) in (1,2,3)
order by 1,2;
