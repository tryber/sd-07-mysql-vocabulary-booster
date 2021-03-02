SELECT
    job_title AS "Cargo",
    ( SELECT max_salary - min_salary) AS `Diferença entre salários máximo e mínimo`
FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, job_title;