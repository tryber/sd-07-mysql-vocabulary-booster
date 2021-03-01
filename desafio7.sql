SELECT 
UCASE(CONCAT (e.FIRST_NAME, " ", e.LAST_NAME)) AS `Nome completo`,
h.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
ON e.JOB_ID = h.JOB_ID
ORDER BY `Nome completo`, `Data de início`;
