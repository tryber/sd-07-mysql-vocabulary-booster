SELECT 
    CONCAT(UPPER(employees.FIRST_NAME),
            ' ',
            UPPER(employees.LAST_NAME)) AS 'Nome completo',
    histor.START_DATE AS 'Data de início',
    employees.SALARY AS 'Salário'
FROM
    hr.job_history AS histor
        INNER JOIN
    hr.employees AS employees ON histor.EMPLOYEE_id = employees.EMPLOYEE_ID
WHERE
    histor.START_DATE LIKE '%-01-%'
        OR histor.START_DATE LIKE '%-02-%'
        OR histor.START_DATE LIKE '%-03-%'
ORDER BY `Nome completo` , `Data de início`;
