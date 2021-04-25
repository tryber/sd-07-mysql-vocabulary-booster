SELECT js.job_title AS 'Cargo',
ROUND(AVG(emp.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(emp.salary), 2) >= 2000 AND ROUND(AVG(emp.salary), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(emp.salary), 2) >= 5801 AND ROUND(AVG(emp.salary), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(emp.salary), 2) >= 7501 AND ROUND(AVG(emp.salary), 2) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS js
INNER JOIN hr.employees AS emp ON emp.job_id = js.job_id
GROUP BY js.job_title
ORDER BY `Média salarial`;
