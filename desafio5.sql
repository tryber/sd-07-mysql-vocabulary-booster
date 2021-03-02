SELECT 
  JOB_TITLE AS 'Cargo',
  (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
  ROUND(AVG(MIN_SALARY / 12), 2) AS 'Média mínima mensal',
  ROUND(AVG(MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM 
  hr.jobs
ORDER BY
  (MAX_SALARY - MIN_SALARY) ASC, JOB_TITLE ASC;
