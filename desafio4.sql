SELECT
    t1.JOB_TITLE AS Cargo,
    ROUND(AVG(t2.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN AVG(t2.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(t2.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(t2.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(t2.SALARY) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS t1
        INNER JOIN
    hr.employees AS t2 ON t1.JOB_ID = t2.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial` ASC , Cargo;
