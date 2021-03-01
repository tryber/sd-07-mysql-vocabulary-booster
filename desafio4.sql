SELECT
    t2.JOB_TITLE AS "Cargo",
    ROUND((SUM(t1.SALARY) / COUNT(*)), 2) AS "Média salarial",
    CASE
        WHEN ROUND((SUM(t1.SALARY) / COUNT(*)), 2) >= 2000 AND ROUND((SUM(t1.SALARY) / COUNT(*)), 2) <= 5800 THEN 'Júnior'
        WHEN ROUND((SUM(t1.SALARY) / COUNT(*)), 2) >= 5801 AND ROUND((SUM(t1.SALARY) / COUNT(*)), 2) <= 7500 THEN 'Pleno'
        WHEN ROUND((SUM(t1.SALARY) / COUNT(*)), 2) >= 7501 AND ROUND((SUM(t1.SALARY) / COUNT(*)), 2) <= 10500 THEN 'Sênior'
        WHEN ROUND((SUM(t1.SALARY) / COUNT(*)), 2) > 10500 THEN 'CEO'
    END AS "Senioridade"
FROM hr.employees AS t1
         INNER JOIN hr.jobs as t2
WHERE t2.JOB_ID = t1.JOB_ID
GROUP BY t2.JOB_TITLE
ORDER BY ROUND((SUM(t1.SALARY) / COUNT(*)), 2), t2.JOB_TITLE;
