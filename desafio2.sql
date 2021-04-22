  SELECT jobs.JOB_TITLE AS "Cargo", 
  CASE
    WHEN jobs.MAX_SALARY >= 5000 AND jobs.MAX_SALARY <= 10000 THEN  "Baixo"
    WHEN jobs.MAX_SALARY >= 10001 AND jobs.MAX_SALARY <= 20000 THEN  "Médio"
    WHEN jobs.MAX_SALARY >= 20001 AND jobs.MAX_SALARY <= 30000 THEN  "Alto"
    WHEN jobs.MAX_SALARY > 30000 THEN  "Altíssimo"
  END AS "Nível"
  FROM hr.jobs AS jobs
  ORDER BY jobs.JOB_TITLE;
