SELECT 
    job.JOB_TITLE AS 'Cargo',
    (job.MAX_SALARY - job.MIN_SALARY) AS 'Variação Salarial',
    ROUND(AVG(job.MIN_SALARY), 2) AS 'Média mínima mensal',
    ROUND(AVG(job.MAX_SALARY), 2) AS 'Média máxima mensal'
FROM
    hr.jobs AS job
GROUP BY `Cargo`, `Variação Salarial`
ORDER BY `Variação Salarial` , `Cargo`;
