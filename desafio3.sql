SELECT job_title, (max_salary - min_salary) AS 'Diferença entre salários máximo e mínimo' FROM hr.jobs
ORDER BY (max_salary - min_salary), job_title;