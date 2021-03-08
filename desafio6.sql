CREATE VIEW hr.vwJobHistory as
select
concat(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
j.JOB_TITLE as 'Cargo',
HIRE_DATE as 'Data de início do cargo',
d.DEPARTMENT_NAME as 'Departamento'
from hr.employees e
left join
hr.departments d on d.DEPARTMENT_ID = e.DEPARTMENT_ID
left join
hr.jobs j on j.JOB_ID = e.JOB_ID
order by
1 DESC,
4 ASC;
