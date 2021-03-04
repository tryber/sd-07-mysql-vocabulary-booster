SELECT 
    job.JOB_TITLE AS 'Cargo',
    (job.MAX_SALARY - job.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs AS job
ORDER BY `Diferença entre salários máximo e mínimo` , `Cargo`;
