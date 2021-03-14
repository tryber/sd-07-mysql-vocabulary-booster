SELECT
job_title AS "Cargo",
(max_salary - min_salary) AS "Variação Salarial",
ROUND(MAX_SALARY / 12, 2) AS `Média máxima mensal`,
ROUND(MIN_SALARY / 12, 2) AS `Média mínima mensal`
FROM hr.jobs
ORDER BY (max_salary - min_salary), job_title;
