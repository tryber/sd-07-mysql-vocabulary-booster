SELECT J.JOB_TITLE AS Cargo,
(J.MAX_SALARY - J.MIN_SALARY) AS 'Variação Salarial',
ROUND(AVG(J.MIN_SALARY), 2) AS 'Média mínima mensal',
ROUND(AVG(J.MAX_SALARY), 2) AS 'Média máxima mensal'
FROM hr.jobs AS J, hr.employees AS E
WHERE J.JOB_ID=E.JOB_ID
GROUP BY E.JOB_ID
ORDER BY `Variação Salarial`, Cargo;