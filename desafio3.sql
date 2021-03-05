SELECT jobs.job_title AS 'Cargo', (MAX_SALARY - MIN_SALARY)
AS 'Diferença entre salários máximo e mínimo' FROM hr.jobs AS jobs
ORDER BY (MAX_SALARY - MIN_SALARY), jobs.job_title;
