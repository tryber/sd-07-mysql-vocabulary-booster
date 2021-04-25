SELECT jobs.job_title AS "Cargo",
ROUND(AVG(salary), 2) AS "Média salarial",
CASE
WHEN ROUND(AVG(salary), 2) BETWEEN 2000 AND 5800 THEN "Júnior"
WHEN ROUND(AVG(salary), 2) BETWEEN 5801 AND 7500 THEN "Pleno"
WHEN ROUND(AVG(salary), 2) BETWEEN 7501 AND 10500 THEN "Sênior"
WHEN ROUND(AVG(salary), 2) > 10500 THEN "CEO"
END
AS "Senioridade"
FROM hr.employees
INNER JOIN jobs
ON employees.job_id = jobs.job_id
GROUP BY Cargo
ORDER BY ROUND(AVG(salary), 2), Cargo;
