SELECT
jobs.JOB_TITLE AS Cargo,
ROUND(AVG(employees.SALARY), 2) AS Média,
CASE 
  WHEN ROUND(AVG(employees.SALARY), 2) > 10500 THEN "CEO"
  WHEN ROUND(AVG(employees.SALARY), 2) > 7501 THEN "Sênior"
  WHEN ROUND(AVG(employees.SALARY), 2) > 5801  THEN "Pleno"
  WHEN ROUND(AVG(employees.SALARY), 2) > 1999 THEN "Júnior"
ELSE "Estagiário"
END AS Senioridade
FROM hr.employees
INNER JOIN hr.jobs ON employees.JOB_ID = jobs.JOB_ID
GROUP BY JOB_TITLE
ORDER BY ROUND(AVG(SALARY), 2) ASC, Cargo ASC;
