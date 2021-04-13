SELECT job_title AS Cargo,
MAX_SALARY - MIN_SALARY as "Variação Salarial",
ROUND(MIN_SALARY/12,2) as 'Média mínima mensal',
ROUND(Max_SALARY/12,2) as 'Média máxima mensal'
FROM hr.jobs
ORDER BY MAX_SALARY - MIN_SALARY, job_title;
