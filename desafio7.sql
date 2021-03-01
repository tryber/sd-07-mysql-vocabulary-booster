SELECT 
UCASE(CONCAT(emps.FIRST_NAME, ' ', emps.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
emps.SALARY AS `Salário`
FROM hr.employees AS emps
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = emps.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Salário`;
