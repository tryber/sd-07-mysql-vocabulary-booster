SELECT job_title AS Cargo,
MIN_SALARY - MAX_SALARY as "Variação salarial",
ROUND(MIN_SALARY/12,2) as 'Média mínima mensal',
ROUND(Max_SALARY/12,2) as 'Média máxima mensal'
FROM hr.jobs
ORDER BY MIN_SALARY - MAX_SALARY, job_title;