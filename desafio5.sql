SELECT cargo.JOB_TITLE AS Cargo,(cargo.MAX_SALARY * 12) - (cargo.MIN_SALARY * 12)  AS "Variação Salarial",
MIN(employe.SALARY) AS "Média mínima mensal", MAX(employe.SALARY) AS "Média máxima mensal"
FROM hr.jobs AS cargo
RIGHT JOIN hr.employees AS employe
ON cargo.JOB_ID = employe.JOB_ID
GROUP BY employe.JOB_ID
ORDER BY `Variação Salarial`,cargo.JOB_TITLE;
