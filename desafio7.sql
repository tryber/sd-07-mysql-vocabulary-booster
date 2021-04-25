SELECT UCASE(CONCAT(em.FIRST_NAME, ' ',em.LAST_NAME)) AS 'Nome completo',
DATE(hist.START_DATE) AS 'Data de início',
em.SALARY AS 'Salário'
FROM hr.employees AS em
INNER JOIN hr.job_history AS hist
ON hist.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE MONTH(hist.START_DATE) BETWEEN 1 AND 3
ORDER BY 1, 2;
