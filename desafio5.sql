SELECT
job_title AS "Cargo",
(max_salary - min_salary) AS "Média Salarial",
min_salary AS "Média mínima mensal",
max_salary AS "Média máxima mensal"
FROM hr.jobs
ORDER BY (max_salary - min_salary), job_title;
