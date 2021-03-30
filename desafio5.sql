SELECT job_title AS "Cargo", (max_salary - min_salary) AS "Variação Salarial",
ROUND(min_salary / 12, 2) AS "Média mínima mensal", ROUND(max_salary / 12, 2) AS "Média máxima mensal"
FROM hr.jobs
GROUP BY job_id
ORDER BY 2, job_title;
