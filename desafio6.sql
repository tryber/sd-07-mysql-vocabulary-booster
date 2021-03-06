select
concat(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
j.JOB_TITLE as 'Cargo',
jh.START_DATE as 'Data de início do cargo',
(select DEPARTMENT_NAME
from hr.departments
where DEPARTMENT_ID = jh.DEPARTMENT_ID) as 'Departamento'
from hr.employees as e
inner join hr.job_history as jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
inner join hr.jobs as j on jh.JOB_ID = j.JOB_ID
order by `Nome Completo` desc, `Cargo`;
