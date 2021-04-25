SELECT
    J.JOB_TITLE AS `Cargo`,
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN AVG(E.SALARY) BETWEEN 2000 AND 5800 THEN "Júnior"
        WHEN AVG(E.SALARY) BETWEEN 5801 AND 7500 THEN "Pleno"
        WHEN AVG(E.SALARY) BETWEEN 7501 AND 10500 THEN "Sênior"
        ELSE "CEO"
    END
    AS `Senioridade`
FROM hr.jobs AS J
INNER JOIN hr.employees E
WHERE J.JOB_ID = E.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo` ASC;
