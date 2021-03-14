SELECT
job_title AS "Cargo",
(MAX_SALARY - MIN_SALARY) AS "Média Salarial",
MIN_SALARY AS "Média mínima mensal",
MAX_SALARY AS "Média máxima mensal"
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY), JOB_TITLE;
