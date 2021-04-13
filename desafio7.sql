select  ucase((concat(e.First_name,' ',e.Last_Name))) as 'Nome completo',
h.START_DATE as 'Data de início',
e.SALARY as Salário
from hr.employees as e
Inner join hr.job_history as h
on e.EMPLOYEE_ID = h.EMPLOYEE_ID
where h.START_DATE like '%-01-%' or h.START_DATE like '%-02-%' or h.START_DATE like '%-03-%'
order by concat(e.First_name,' ',e.Last_Name) asc, h.START_DATE;
