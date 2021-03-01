SELECT 
    job.JOB_TITLE AS 'Cargo',
    ROUND(AVG(employe.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN
            (AVG(employe.SALARY) >= 2000
                AND AVG(employe.SALARY) <= 5800)
        THEN
            'Júnior'
        WHEN
            (AVG(employe.SALARY) >= 5800
                AND AVG(employe.SALARY) <= 7500)
        THEN
            'Pleno'
        WHEN
            (AVG(employe.SALARY) >= 7500
                AND AVG(employe.SALARY) <= 10500)
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS employe
        JOIN
    hr.jobs AS job ON employe.JOB_ID = job.JOB_ID
GROUP BY employe.JOB_ID
ORDER BY AVG(employe.SALARY);
