SELECT JOB_TITLE AS Cargo,
cast((MAX_SALARY/12) AS DECIMAL(10,2)) AS `Média máxima mensal`,
cast((MIN_SALARY/12) AS DECIMAL(10,2)) AS `Média mínima mensal`,
(MAX_SALARY-MIN_SALARY) AS `Variação Salarial`
FROM jobs
ORDER BY (MAX_SALARY-MIN_SALARY) ASC, JOB_TITLE;
