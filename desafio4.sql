SELECT JOB_TITLE AS Cargo,
    ROUND(AVG(e.SALARY), 2) AS 'Média Salarial',
    CASE
        WHEN (
            AVG(e.SALARY) >= 2000
            AND AVG(e.SALARY) <= 5800
        ) THEN 'Júnior'
        WHEN (
            AVG(e.SALARY) >= 5801
            AND AVG(e.SALARY) <= 7500
        ) THEN 'Pleno'
        WHEN (
            AVG(e.SALARY) >= 7501
            AND AVG(e.SALARY) <= 10500
        ) THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM hr.employees AS e
    INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY JOB_TITLE
ORDER BY AVG(SALARY),
    JOB_TITLE;
