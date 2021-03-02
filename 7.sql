-- Desafio 7

SELECT 
UCASE(CONCAT(e.FIRST_NAME, ' ',e.LAST_NAME)) AS `Nome completo`, 
h.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM hr.employees AS e 
INNER JOIN hr.job_history AS h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
