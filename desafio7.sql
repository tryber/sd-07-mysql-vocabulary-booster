select
ucase(concat(e.FIRST_NAME, ' ', e.LAST_NAME)) as 'Nome completo',
jh.START_DATE as 'Data de início',
(select SALARY
from hr.employees
where EMPLOYEE_ID = jh.EMPLOYEE_ID) as 'Salário'
from hr.employees as e
inner join hr.job_history as jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
where month(jh.START_DATE) in (01, 02, 03)
order by `Nome Completo`, `Data de início`;
