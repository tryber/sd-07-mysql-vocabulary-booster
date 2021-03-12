select
concat(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') as 'Data de início', 
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') as 'Data de rescisão', 
(select round((DATEDIFF(jh.End_DATE, jh.START_DATE) /365),2)) as 'Anos trabalhados'
from hr.job_history jh
inner join hr.employees e on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by
1 ASC,
4 ASC;
