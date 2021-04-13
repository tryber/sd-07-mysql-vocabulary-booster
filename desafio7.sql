SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
j_h.START_DATE AS `Data de início`,
e.SALARY AS Salário
FROM hr.job_history AS j_h
INNER JOIN hr.employees AS e
ON j_h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(j_h.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;
