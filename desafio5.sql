SELECT 
JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
round(MIN_SALARY/12,2) AS 'Média mínima mensal',
round(MAX_SALARY/12,2) AS 'Média máxima mensal'
 from hr.jobs 
 ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
