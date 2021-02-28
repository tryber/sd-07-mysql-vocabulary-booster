SELECT
  j.job_title AS 'Cargo',
  (j.max_salary - j.min_salary) AS 'Variação Salarial'
FROM hr.employees AS e
JOIN hr.jobs AS j
ON e.job_id = j.job_id
GROUP BY cargo
ORDER BY `Variação Salarial`, cargo