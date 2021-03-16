SELECT hrj.JOB_TITLE AS 'Cargo', (hrj.MAX_SALARY - hrj.MIN_SALARY) AS 'Variação Salarial',
MIN(hre.SALARY) AS 'Média mínima mensal', MAX(hre.SALARY) AS 'Média máxima mensal'
FROM hr.jobs hrj
INNER JOIN hr.employees hre ON hrj.JOB_ID = hre.JOB_ID
GROUP BY hrj.JOB_ID
ORDER BY `Variação Salarial`, `Cargo`;
