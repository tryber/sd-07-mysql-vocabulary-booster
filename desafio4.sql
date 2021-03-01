SELECT jobs.JOB_TITLE AS 'Cargo', ROUND(AVG(employees.SALARY), 2) AS 'Média salarial',
CASE
  WHEN AVG(employees.SALARY) > 10500 THEN 'CEO'
  WHEN AVG(employees.SALARY) > 7500 THEN 'Sênior'
  WHEN AVG(employees.SALARY) > 5800 THEN 'Pleno'
  WHEN AVG(employees.SALARY) > 1999 THEN 'Júnior'
END AS 'Senioridade'
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs ON employees.JOB_ID = jobs.JOB_ID
GROUP BY jobs.JOB_ID
ORDER BY `Média salarial`, jobs.JOB_TITLE;
