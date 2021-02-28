SELECT job_title AS 'Cargo', (
CASE
	WHEN (max_salary >= 5000 and max_salary <= 10000) THEN 'Baixo'
    WHEN (max_salary > 10000 and max_salary <= 20000) THEN 'Médio'
    WHEN (max_salary > 20000 and max_salary <= 30000) THEN 'Alto'
    ELSE 'Altíssimo'
END
) AS 'Nível'
FROM hr.jobs
ORDER BY job_title;
