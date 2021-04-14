SELECT 
    CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo`,
    CONCAT(IF(LENGTH(DAY(t2.START_DATE)) = 1,
                CONCAT(0, DAY(t2.START_DATE)),
                DAY(t2.START_DATE)),
            '/',
            IF(LENGTH(MONTH(t2.START_DATE)) = 1,
                CONCAT(0, MONTH(t2.START_DATE)),
                MONTH(t2.START_DATE)),
            '/',
            YEAR(t2.START_DATE)) AS `Data de início`,
    CONCAT(IF(LENGTH(DAY(t2.END_DATE)) = 1,
                CONCAT(0, DAY(t2.END_DATE)),
                DAY(t2.END_DATE)),
            '/',
            IF(LENGTH(MONTH(t2.END_DATE)) = 1,
                CONCAT(0, MONTH(t2.END_DATE)),
                MONTH(t2.END_DATE)),
            '/',
            YEAR(t2.END_DATE)) AS `Data de rescisão`,
    ROUND((YEAR(t2.END_DATE) - YEAR(t2.START_DATE)) + ((MONTH(t2.END_DATE) - MONTH(t2.START_DATE)) / 12) + ((DAY(t2.END_DATE) - DAY(t2.START_DATE)) / 360),
            2) AS `Anos trabalhados`
FROM
    hr.employees AS t1
        INNER JOIN
    hr.job_history AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
ORDER BY `Nome completo` ASC , `Anos trabalhados` ASC;
