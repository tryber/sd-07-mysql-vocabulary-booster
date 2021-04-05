SELECT J.JOB_TITLE AS Cargo,
(J.MAX_SALARY - J.MIN_SALARY) AS 'Variação Salarial',
ROUND(J.MIN_SALARY/12, 2) AS 'Média mínima mensal',
ROUND(J.MAX_SALARY/12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS J, hr.employees AS E
WHERE J.JOB_ID=E.JOB_ID
GROUP BY E.JOB_ID
ORDER BY `Variação Salarial`, Cargo;
