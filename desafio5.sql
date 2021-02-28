SELECT J.JOB_TITLE AS Cargo,
Delta AS 'Variação Salarial',
ROUND(`MIN`, 2) AS 'Média mínima mensal',
ROUND(`MAX`, 2) AS 'Média máxima mensal'
FROM hr.employees AS E
INNER JOIN (SELECT JOB_ID,
  MAX(SALARY) - MIN(SALARY) AS Delta,
  MIN(SALARY) / 12 AS MIN,
  MAX(SALARY) / 12 AS MAX FROM hr.employees
  GROUP BY JOB_ID) AS Support
ON E.JOB_ID = Support.JOB_ID
INNER JOIN hr.jobs AS J
ON E.JOB_ID = J.JOB_ID
ORDER BY Delta, Cargo;
