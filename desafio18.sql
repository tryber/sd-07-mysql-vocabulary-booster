select
concat(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
concat(day(jh.START_DATE), '/', month(jh.START_DATE), '/', YEAR(jh.START_DATE)) as 'Data de início',
concat(day(jh.END_DATE), '/', month(jh.END_DATE), '/', YEAR(jh.END_DATE)) as 'Data de rescisão',
(select round((DATEDIFF(jh.End_DATE, jh.START_DATE) /365),2)) as 'Anos trabalhados'
from hr.job_history jh
inner join hr.employees e on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by
1 ASC,
4 ASC;