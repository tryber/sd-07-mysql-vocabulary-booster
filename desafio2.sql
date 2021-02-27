SELECT jobs.job_title AS "Cargo",
    (
    CASE
      WHEN jobs.max_salary > 30000 THEN 'Altíssimo'
      WHEN jobs.max_salary >= 20001 AND jobs.max_salary <= 30000 THEN 'Alto'
      WHEN jobs.max_salary >= 10001 AND jobs.max_salary <= 20000 THEN 'Médio'
    ELSE 'Baixo'
    END
    ) AS "Nível"
FROM jobs
ORDER BY jobs.job_title;