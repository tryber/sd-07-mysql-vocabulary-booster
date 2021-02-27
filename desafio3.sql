SELECT
JOB_TITLE AS Cargo,
ROUND(MAX_SALARY - MIN_SALARY, 2) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY
'Diferença entre salários máximo e mínimo',
Cargo;
