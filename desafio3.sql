SELECT hr.job_title AS 'Cargo', (MAX_SALARY - MIN_SALARY)
AS 'Diferença entre salários máximo e mínimo' FROM hr.jobs 
ORDER BY (MAX_SALARY - MIN_SALARY), hr.jb_title;
