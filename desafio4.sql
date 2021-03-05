  SELECT jobs.JOB_TITLE AS "Cargo", 
  ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) AS "Média salarial",
  CASE
    WHEN ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) >= 2000 
      AND ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) <= 5800 THEN  "Júnior"
    WHEN ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) >= 5801 
      AND ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) <= 7500 THEN  "Pleno"
    WHEN ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) >= 7501 
      AND ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) <= 10500 THEN  "Sênior"
    WHEN ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) > 10500 THEN "CEO"
  END AS "Senioridade"
  FROM hr.jobs AS jobs
  ORDER BY
    ROUND(((jobs.MAX_SALARY + jobs.MIN_SALARY) / 2), 2) ASC,
    jobs.JOB_TITLE ASC;
