SELECT j.JOB_TITLE AS 'Cargo', ROUND(avg(s.salary), 2) AS 'Média Salarial',
CASE
WHEN ROUND(avg(s.salary), 2) >= 2000.00 AND ROUND(avg(s.salary), 2) <= 5800.00 THEN 'Júnior'
WHEN ROUND(avg(s.salary), 2) > 5800.00 AND ROUND(avg(s.salary), 2) <= 7500.00 THEN 'Pleno'
WHEN ROUND(avg(s.salary), 2) > 7500.00 AND ROUND(avg(s.salary), 2) <= 10500.00 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS s
ON j.JOB_ID = s.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média Salarial`, JOB_TITLE;
