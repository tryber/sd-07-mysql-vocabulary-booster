SELECT
    UPPER(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
    JH.START_DATE AS `Data de início`,
    E.SALARY AS `Salário`
FROM job_history JH
    INNER JOIN employees E
    ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE JH.START_DATE LIKE '_____01%'
    OR JH.START_DATE LIKE '_____02%' 
    OR JH.START_DATE LIKE '_____03%'
ORDER BY `Nome completo`, `Data de início`;
