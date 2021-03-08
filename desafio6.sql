select
concat(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
j.JOB_TITLE as 'Cargo',
jh.START_DATE as 'Data de início do cargo',
d.DEPARTMENT_NAME
from hr.employees e
left join
hr.jobs j on j.JOB_ID = e.JOB_ID
inner join hr.job_history jh on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
inner join hr.departments d on d.DEPARTMENT_ID = jh.DEPARTMENT_ID 
order by
1 DESC,
2 ASC;
