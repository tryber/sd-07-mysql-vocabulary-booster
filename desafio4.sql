SELECT
jobs.job_title AS 'Cargo',
ROUND(AVG(employees.SALARY), 2) AS 'Média salarial',
CASE 
  WHEN ROUND(AVG(employees.SALARY), 2) > 10500 THEN "CEO"
  WHEN ROUND(AVG(employees.SALARY), 2) > 7501 THEN "Sênior"
  WHEN ROUND(AVG(employees.SALARY), 2) > 5801  THEN "Pleno"
  WHEN ROUND(AVG(employees.SALARY), 2) > 1999 THEN "Júnior"
ELSE "Estagiário"
END AS Senioridade
FROM hr.employees
INNER JOIN hr.jobs ON employees.job_id = jobs.job_id
GROUP BY job_title
ORDER BY ROUND(AVG(SALARY), 2) ASC, Cargo ASC;
