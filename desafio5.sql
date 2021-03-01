SELECT
j.job_title AS Cargo,
(j.max_salary - j.min_salary) AS 'Variação Salarial',
ROUND(MIN(e.salary), 2) AS 'Média mínima mensal',
ROUND(MAX(e.salary), 2) AS 'Média máxima mensal'
FROM hr.jobs j
LEFT JOIN hr.employees e ON j.job_id = e.job_id
GROUP BY Cargo
ORDER BY (j.max_salary - j.min_salary), Cargo;
