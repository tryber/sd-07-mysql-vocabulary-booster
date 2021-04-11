-- rever esse, esta muito complicado
SELECT 
jobs.job_title AS Cargo,
ROUND(AVG(employees.salary), 2) as "Média salarial",
CASE
  WHEN ROUND(AVG(employees.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN ROUND(AVG(employees.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN ROUND(AVG(employees.salary)) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN ROUND(AVG(employees.salary)) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.employees AS employees
INNER JOIN hr.jobs as jobs
ON employees.job_id = jobs.job_id
GROUP BY jobs.job_title
ORDER BY ROUND(AVG(employees.salary)), jobs.job_title;
