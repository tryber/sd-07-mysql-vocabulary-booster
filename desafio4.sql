SELECT 
    j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN (AVG(e.SALARY) BETWEEN 2000 AND 5799) THEN 'Júnior'
        WHEN (AVG(e.SALARY) BETWEEN 5800 AND 7499) THEN 'Pleno'
        WHEN (AVG(e.SALARY) BETWEEN 7500 AND 10499) THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY AVG(e.SALARY);
