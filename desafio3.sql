SELECT job_title AS "Cargo",  max_salary - min_salary AS "Diferença entre salários máximo e mínimo"
FROM hr.jobs
ORDER BY 2, job_title;
