SELECT j.job_title, AVG(salary) AS 'Média salarial',
CASE
WHEN AVG(salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(salary) BETWEEN 7501 AND 10500 THEN 'Sênior' 
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees e
JOIN hr.jobs j
ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY AVG(salary), j.job_title;
