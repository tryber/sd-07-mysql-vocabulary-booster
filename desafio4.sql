SELECT
j.job_title AS Cargo,
ROUND(AVG(e.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(e.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(e.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(e.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees e
LEFT JOIN hr.jobs j ON e.job_id = j.job_id
GROUP BY Cargo
ORDER BY ROUND(AVG(e.salary), 2), Cargo;
