SELECT jobs.job_title AS `Cargo`,
 ROUND(AVG(employees.salary), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(employees.salary), 2) >= 2000 AND ROUND(AVG(employees.salary), 2) <= 5800 THEN 'Júnior'
        WHEN ROUND(AVG(employees.salary), 2) >= 5801 AND ROUND(AVG(employees.salary), 2) <= 7500 THEN 'Pleno'
        WHEN ROUND(AVG(employees.salary), 2) >= 7501 AND ROUND(AVG(employees.salary), 2) <= 10500 THEN 'Sênior'
        WHEN ROUND(AVG(employees.salary), 2) > 10500 THEN 'CEO'
    END AS `Senioridade`
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS employees
ON employees.JOB_ID = jobs.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo`;
