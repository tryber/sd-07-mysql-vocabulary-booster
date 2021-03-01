SELECT tableJobs.JOB_TITLE AS `Cargo`,
  ROUND(AVG(tableEmployees.SALARY), 2) AS `Média salarial`,
  CASE
    WHEN (
      ROUND(AVG(tableEmployees.SALARY), 2) >= 2000
      AND ROUND(AVG(tableEmployees.SALARY), 2) <= 5800
    ) THEN 'Júnior'
    WHEN (
      ROUND(AVG(tableEmployees.SALARY), 2) >= 5801
      AND ROUND(AVG(tableEmployees.SALARY), 2) <= 7500
    ) THEN 'Pleno'
    WHEN (
      ROUND(AVG(tableEmployees.SALARY), 2) >= 7501
      AND ROUND(AVG(tableEmployees.SALARY), 2) <= 10500
    ) THEN 'Sênior'
    WHEN ROUND(AVG(tableEmployees.SALARY), 2) > 10500 THEN 'CEO'
  END AS "Senioridade"
FROM hr.jobs AS tableJobs
  INNER JOIN hr.employees AS tableEmployees ON tableJobs.JOB_ID = tableEmployees.JOB_ID
GROUP BY tableJobs.JOB_TITLE
ORDER BY `Média salarial`,
  `Cargo`;
