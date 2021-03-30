SELECT UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS "Nome completo",
jh.START_DATE AS "Data de início",
e.SALARY
FROM hr.employees e
INNER JOIN hr.job_history jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE month(jh.START_DATE) IN (1, 2, 3)
ORDER BY 1, 2;
