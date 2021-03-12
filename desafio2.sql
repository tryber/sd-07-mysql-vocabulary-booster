SELECT 
	job_title AS "Cargo",
	max_salary AS "Nível",
	CASE 
		WHEN max_salary <= 10000  THEN "Baixo"
    WHEN max_salary BETWEEN 10001 AND 20000 THEN "Medio"
    WHEN max_salary BETWEEN 20001 AND 30000 THEN "Alto"
    WHEN max_salary > 30000 THEN "Altíssimo"
	END AS "GranaGranaGrana"
FROM hr.jobs;
