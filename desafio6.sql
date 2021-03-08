select
concat(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
j.JOB_TITLE as 'Cargo',
jh.START_DATE as 'Data de início do cargo',
d.DEPARTMENT_NAME as 'Departamento'
from hr.employees e
inner join hr.job_history jh on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
left join hr.jobs j on j.JOB_ID = jh.JOB_ID
inner join hr.departments d on d.DEPARTMENT_ID = jh.DEPARTMENT_ID 
order by
1 DESC,
2 ASC;

Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'jh' at line 1
