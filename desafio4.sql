SELECT j.job_title AS "Cargo", ROUND(AVG(salary), 2)
AS "Média salarial",
CASE
WHEN ROUND(AVG(salary), 2) >= 2000 AND ROUND(AVG(salary), 2) <= 5800 THEN "Júnior"
WHEN ROUND(AVG(salary), 2) >= 5801 AND ROUND(AVG(salary), 2) <= 7500 THEN "Pleno"
WHEN ROUND(AVG(salary), 2) >= 7501 AND ROUND(AVG(salary), 2) <= 10500 THEN "Sênior"
WHEN ROUND(AVG(salary), 2) > 10500 THEN "CEO"
END AS "Senioridade"
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY ROUND(AVG(salary), 2), job_title;
