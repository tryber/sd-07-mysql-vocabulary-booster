SELECT job.job_title AS "Cargo", ROUND(AVG(employees.salary), 2) AS "Média salarial",
CASE
WHEN AVG(salary) BETWEEN 2000 AND 5800 THEN "Júnior"
WHEN AVG(salary) BETWEEN 5801  AND 7500 THEN "Pleno"
WHEN AVG(salary) BETWEEN 7501 AND 10500 THEN "Sênior"
WHEN AVG(salary) > 10500 THEN "CEO"
END AS "Senioridade"
FROM hr.jobs AS job
INNER JOIN hr.employees AS employees
ON job.job_id = employees.job_id
GROUP by job.job_title
ORDER BY 2,job.job_title;
