SELECT j.JOB_TITLE AS 'Cargo',
ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(e.SALARY), 2) < 5801 THEN 'Júnior'
WHEN ROUND(AVG(e.SALARY), 2) < 7501 THEN 'Pleno'
WHEN ROUND(AVG(e.SALARY), 2) < 10501 THEN 'Sênior'
ELSE 'CEO'
END AS `Senioridade`
FROM hr.employees AS e INNER JOIN hr.jobs AS j
ON j.JOB_ID=e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Média salarial`;
