SELECT
CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) as `Nome completo`,
t3.JOB_TITLE as Cargo,
t1.START_DATE as `Data de início do cargo`,
t4.DEPARTMENT_NAME as Departamento
from job_history as t1
INNER JOIN employees as t2
on t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
INNER JOIN jobs as t3
on t1.JOB_ID = t3.JOB_ID
INNER JOIN departments as t4
on t1.DEPARTMENT_ID = t4.DEPARTMENT_ID
ORDER BY CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) DESC, t3.JOB_TITLE
