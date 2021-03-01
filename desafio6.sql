SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) as `Nome completo`,
J.JOB_TITLE as Cargo,
JH.START_DATE as `Data de início do cargo`,
D.DEPARTMENT_NAME as Departamento
from job_history as JH
INNER JOIN employees as E
on JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN jobs as J
on JH.JOB_ID = J.JOB_ID
INNER JOIN departments as D
on JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) DESC, J.JOB_TITLE;
