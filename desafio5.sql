SELECT JOB_TITLE AS 'Cargo', (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial', 
ROUND(AVG(MIN_SALARY),2) AS 'Média mínima mensal', 
MAX_SALARY AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY JOB_ID
ORDER BY (MAX_SALARY - MIN_SALARY), JOB_TITLE;
