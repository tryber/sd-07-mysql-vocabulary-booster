SELECT
    UPPER(CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME)) AS 'Nome completo',
    H.START_DATE AS `Data de início`,
    employees.SALARY AS `Salário`
FROM hr.job_history AS H
INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = H.EMPLOYEE_ID
WHERE MONTH(H.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início` ASC;