SELECT job_title 'Cargo', 
max_salary - min_salary 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY (max_salary - min_salary), job_title;
