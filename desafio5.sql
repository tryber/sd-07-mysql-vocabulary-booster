SELECT J.job_title AS Cargo,
(J.max_salary - J.min_salary) AS 'Variação Salarial',
Round(J.min_salary/12,2) AS 'Média mínima mensal',
Round(J.max_salary/12,2) AS 'Média máxima mensal'
FROM hr.jobs AS J
ORDER BY (J.max_salary - J.min_salary), J.job_title;
