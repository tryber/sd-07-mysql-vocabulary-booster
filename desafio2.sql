SELECT job_title 'Cargo',
CASE
WHEN max_salary>=5000 AND max_salary<=10000 THEN 'Baixo'
WHEN max_salary>=10001 AND max_salary<=20000 THEN 'Médio'
WHEN max_salary>=20001 AND max_salary<=30000 THEN 'Alto'
WHEN max_salary>=30001 THEN 'Altíssimo'
END 'Nível'
FROM jobs
ORDER BY job_title;
