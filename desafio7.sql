SELECT UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS "Nome completo",
e.SALARY AS "Salário",
h.START_DATE AS "Data de início"
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) BETWEEN 1 AND 3
ORDER BY UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)), h.START_DATE;
