SELECT JOB_TITLE AS `Cargo`, (ROUND(AVG(t2.salary), 2)) AS `Média salarial`,
CASE
WHEN (ROUND(AVG(t2.salary), 2)) <= 5800 THEN "Júnior"
WHEN (ROUND(AVG(t2.salary), 2)) > 5800 AND (ROUND(AVG(t2.salary), 2)) <= 7500 THEN "Pleno"
WHEN (ROUND(AVG(t2.salary), 2)) > 7500 AND (ROUND(AVG(t2.salary), 2)) <= 10500 THEN "Sênior"
WHEN (ROUND(AVG(t2.salary), 2)) > 10500 THEN "CEO"
END AS `Senioridade`
FROM hr.jobs AS t1
INNER JOIN hr.employees AS t2
ON t1.job_id = t2.job_id
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo`;
