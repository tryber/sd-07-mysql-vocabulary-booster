SELECT
UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) 'Nome completo',
job_h.START_DATE 'Data de início',
emp.SALARY 'Salário'
FROM hr.employees emp
INNER JOIN hr.job_history job_h
ON job_h.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(job_h.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, Salário;

-- Refeito
