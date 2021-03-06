SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
job_hist.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS job_hist
ON job_hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(START_DATE) < 4
ORDER BY `Nome completo`, `Data de início`;
