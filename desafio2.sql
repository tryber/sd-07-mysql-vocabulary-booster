SELECT JOB_TITLE AS Cargo,
CASE
  WHEN MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
  WHEN MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
  WHEN MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
  WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
  ELSE 'Erro'
END AS 'Nível'
FROM hr.jobs
ORDER BY Cargo;
