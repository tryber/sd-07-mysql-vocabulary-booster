SELECT
j.job_title AS Cargo,
(j.max_salary - j.min_salary) AS 'Variação Salarial',
ROUND(MIN(e.salary), 2) AS 'Média mínima mensal',
ROUND(MAX(e.salary), 2) AS 'Média máxima mensal'
FROM hr.jobs j
LEFT JOIN hr.employees e ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY 2, Cargo;
