select
UCASE(concat(e.first_name, ' ', e.last_name)) as 'Nome completo',
jh.START_DATE as 'Data de início',
e.SALARY as 'Salário'
from hr.job_history jh
inner join employees e on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
where month(jh.START_DATE) in (1, 2, 3)
order by
1 ASC,
2 ASC;
