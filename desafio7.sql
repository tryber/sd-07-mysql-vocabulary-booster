SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
    history.START_DATE AS `Data de início`,
    employees.SALARY AS 'Salário'
FROM hr.job_history AS history
INNER JOIN hr.employees AS employees
ON history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(history.START_DATE) <=3
ORDER BY `Nome completo`, `Data de início`;