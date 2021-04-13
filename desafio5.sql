SELECT cargo.JOB_TITLE AS Cargo,cargo.MAX_SALARY  - cargo.MIN_SALARY AS "Variação Salarial",
ROUND(AVG(cargo.MIN_SALARY / 12),2) AS "Média mínima mensal", ROUND(AVG(cargo.MAX_SALARY / 12),2) AS "Média máxima mensal"
FROM hr.jobs AS cargo
RIGHT JOIN hr.employees AS employe
ON cargo.JOB_ID = employe.JOB_ID
GROUP BY employe.JOB_ID
ORDER BY `Variação Salarial`,cargo.JOB_TITLE;
