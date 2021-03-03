SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS "Nome completo",
h.START_DATE AS "Data de início",
e.SALARY AS "Salário"
FROM hr.job_history AS h
INNER JOIN hr.jobs AS j
ON h.JOB_ID = j.JOB_ID
INNER JOIN hr.employees as e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
HAVING MONTH(h.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`;
