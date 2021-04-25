SELECT
j.job_title AS 'Cargo',
CASE
WHEN j.max_salary >= 5000 AND j.max_salary <= 10000 THEN 'Baixo'
WHEN j.max_salary >= 10001 AND j.max_salary <= 20000 THEN 'Médio'
WHEN j.max_salary >= 20001 AND j.max_salary <= 30000 THEN 'Alto'
WHEN j.max_salary >= 30001 THEN 'Altíssimo'
END AS 'Nível'
FROM hr.jobs j
ORDER BY j.job_title;
