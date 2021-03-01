SELECT
CONCAT(UPPER(t2.FIRST_NAME), ' ', UPPER(t2.LAST_NAME)) as `Nome completo`,
t1.START_DATE as `Data de início`,
t2.SALARY as Salário
from job_history as t1
INNER JOIN employees as t2
on t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
where MONTH(t1.START_DATE) IN (1,2,3)
ORDER BY CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME), t1.START_DATE
