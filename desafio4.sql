SELECT 
	jobs.JOB_TITLE AS Cargo,
	ROUND(AVG(employees.SALARY), 2) AS "Média salarial",
		CASE
			WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 2000 AND 5800 THEN "Júnior"
			WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 5801 AND 7500 THEN "Pleno"
			WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 7501 AND 10500 THEN "Sênior"
			WHEN ROUND(AVG(employees.SALARY), 2) > 10500 THEN "CEO"
        END AS Senioridade
FROM hr.employees
INNER JOIN hr.jobs
ON hr.jobs.JOB_ID = hr.employees.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY ROUND(AVG(employees.SALARY), 2), jobs.JOB_TITLE;
