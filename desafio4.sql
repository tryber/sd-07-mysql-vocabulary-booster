SELECT j.job_title AS Cargo, ROUND(AVG(e.salary),2) AS "Média salarial",
    CASE
        WHEN ROUND(AVG(e.salary),2) > 10500 THEN 'CEO'
        WHEN ROUND(AVG(e.salary),2) > 7500 THEN 'Sênior'
        WHEN ROUND(AVG(e.salary),2) >= 5800 THEN 'Pleno'
        ELSE 'Júnior'
    END AS "Senioridade" 
    FROM hr.jobs AS j
    INNER JOIN hr.employees AS e
    ON j.job_id =  e.job_id
    GROUP BY e.job_id
    ORDER BY ROUND(AVG(e.salary),2), Cargo;
