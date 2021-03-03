SELECT jobs.JOB_TITLE AS 'Cargo', ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
CASE
  WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 7500 AND 10500 THEN 'Sênior'
  WHEN ROUND(AVG(emp.SALARY), 2) > 10500 THEN 'CEO'
  ELSE 'Não classificado'
END AS 'Senioridade'
FROM hr.jobs as jobs
INNER JOIN hr.employees AS emp
ON jobs.JOB_ID = emp.JOB_ID
GROUP BY emp.JOB_ID
ORDER BY `Média salarial`, `Cargo` ASC;
