SELECT job_title AS 'Cargo',
CASE
WHEN max_salary >= 5000 AND max_salary < 10001  THEN 'Baixo'
WHEN max_salary >= 10001 AND max_salary < 20001  THEN 'Médio'
WHEN max_salary >= 20001 AND max_salary < 30001 THEN 'Alto'
ELSE 'Altíssimo'
END AS 'Nível'
FROM hr.jobs
ORDER BY job_title;
