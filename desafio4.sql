SELECT jobss.JOB_TITLE AS 'Cargo',
ROUND(AVG(empss.SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(empss.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(empss.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(empss.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(empss.SALARY) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS empss
INNER JOIN hr.jobs AS jobss
ON jobss.JOB_ID = empss.JOB_ID
GROUP BY jobss.JOB_TITLE
ORDER BY `Média salarial`, jobss.JOB_TITLE;
