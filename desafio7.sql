SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
j.START_DATE AS 'Data de início', e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j ON e.JOB_ID = j.JOB_ID
WHERE MONTH(j.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
