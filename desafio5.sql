SELECT JOB_TITLE AS Cargo, 
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial', 
ROUND(AVG(MIN_SALARY)/12, 2) as 'Média mínima mensal',
ROUND(AVG(MAX_SALARY)/12, 2) as 'Média máxima mensal'
FROM hr.jobs
GROUP BY JOB_ID
ORDER BY (MAX_SALARY - MIN_SALARY), Cargo;
