SELECT jobs.job_title AS 'Cargo', ROUND(AVG(emp.salary), 2) AS 'Média salarial',
CASE
  WHEN AVG(emp.salary)  BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN AVG(emp.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN AVG(emp.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN AVG(emp.salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS emp 
  ON jobs.job_id = emp.job_id
GROUP BY jobs.job_title ORDER BY AVG(emp.salary) ASC, jobs.job_title ASC;
