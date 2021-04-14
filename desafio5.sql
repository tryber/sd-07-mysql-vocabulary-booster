SELECT job_title AS 'Cargo',
max_salary - min_salary AS 'Variação Salarial',
ROUND(min_salary/12, 2) 'Média mínima mensal',
ROUND(max_salary/12, 2) 'Média máxima mensal'
FROM hr.jobs
ORDER BY (max_salary - min_salary), job_title;
