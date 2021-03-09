SELECT j.JOB_TITLE AS Cargo,
j.MAX_SALARY - j.MIN_SALARY AS 'Variação Salarial',
j.MIN_SALARY AS 'Média mínima mensal',
j.MAX_SALARY AS 'Média máxima mensal'
FROM hr.jobs AS j
ORDER BY j.MAX_SALARY - j.MIN_SALARY, j.JOB_TITLE;
