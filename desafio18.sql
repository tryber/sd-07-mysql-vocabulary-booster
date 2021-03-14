SELECT
concat(e.first_name, ' ', e.last_name) as 'Nome completo',
DATE_FORMAT(jh.start_date, '%d/%m/%Y') as 'Data de início', 
DATE_FORMAT(jh.end_date, '%d/%m/%Y') as 'Data de rescisão', 
(SELECT round((DATEDIFF(jh.end_date, jh.start_date) /365),2)) as 'Anos trabalhados'
from hr.job_history jh
inner join hr.employees e on e.employee_id = jh.employee_id
