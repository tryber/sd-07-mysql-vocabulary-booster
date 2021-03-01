SELECT j.job_title AS 'Cargo',
ROUND(e.salary, 2) AS 'Média salarial',
CASE
WHEN e.salary  >= 2000
AND e.salary  <= 5800
THEN 'Júnior'
WHEN e.salary  >= 5801
AND e.salary  <= 7500
THEN 'Pleno'
WHEN e.salary  >= 7501
AND e.salary  <= 10500
THEN 'Sênior'
WHEN e.salary  > 10500
THEN 'CEO'
END AS 'Senioridade'
FROM employees e
INNER JOIN jobs j
ON e.job_id = j.job_id
ORDER BY e.salary, j.job_title;
