SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
jobhistory.START_DATE AS `Data de início`,
employees.SALARY AS 'Salário'
FROM hr.job_history AS jobhistory
INNER JOIN hr.employees AS employees
ON jobhistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(jobhistory.START_DATE) <=3
ORDER BY `Nome completo`, `Data de início`;
