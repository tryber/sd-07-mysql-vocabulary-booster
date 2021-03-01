SELECT job.job_title AS "Cargo", ROUND(AVG(employees.salary), 2) AS "Média salarial",
	CASE
		WHEN AVG(salary) >= 2000 AND AVG(salary)<= 5800 THEN "Júnior"
		WHEN AVG(salary) >= 5801  AND AVG(salary)<= 7500 THEN "Pleno"
		WHEN AVG(salary) >= 7501 AND AVG(salary)<= 10500 THEN "Sênior"
		WHEN AVG(salary) > 10500 THEN "CEO"
	END AS "Senioridade"
FROM hr.jobs AS job
INNER JOIN hr.employees AS employees
ON job.job_id = employees.job_id
GROUP by employees.salary
ORDER BY employees.salary,job.job_title;
