SELECT
CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) as `Nome completo`,
t2.JOB_TITLE as Cargo,
t1.HIRE_DATE as `Data de início do cargo`,
t3.DEPARTMENT_NAME as Departamento
from hr.employees as t1
inner join hr.jobs as t2
on t1.JOB_ID = t2.JOB_ID
inner join hr.departments as t3
on t1.DEPARTMENT_ID = t3.DEPARTMENT_ID
ORDER BY CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) DESC, t2.JOB_TITLE
