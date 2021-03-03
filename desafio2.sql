  SELECT jobs.JOB_TITLE AS "Cargo", 
  CASE
    WHEN employees.SALARY >= 5000 AND employees.SALARY <= 10000 THEN  "Baixo"
    WHEN employees.SALARY >= 10001 AND employees.SALARY <= 20000 THEN  "Médio"
    WHEN employees.SALARY >= 20001 AND employees.SALARY <= 30000 THEN  "Alto"
    WHEN employees.SALARY > 30000 THEN  "Altíssimo"
  END AS "Nível"
  FROM hr.jobs AS jobs
  INNER JOIN hr.employees AS employees
  ON jobs.JOB_ID = employees.JOB_ID
  ORDER BY jobs.JOB_TITLE;
