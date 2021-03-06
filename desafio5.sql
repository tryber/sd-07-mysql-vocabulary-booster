  SELECT jobs.JOB_TITLE AS "Cargo",
  jobs.MAX_SALARY - jobs.MIN_SALARY AS "Variação Salarial",
  ROUND((jobs.MIN_SALARY / 12), 2) AS "Média mínima mensal",
  ROUND((jobs.MAX_SALARY / 12), 2) AS "Média máxima mensal"
  FROM hr.jobs AS jobs
  ORDER BY
    jobs.MAX_SALARY - jobs.MIN_SALARY ASC,
    jobs.JOB_TITLE ASC;
