SELECT JOB_TITLE Cargo,
(MAX_SALARY - MIN_SALARY) "Variação Salarial",
ROUND((MIN_SALARY/12), 2) "Média mínima mensal",
ROUND((MAX_SALARY/12), 2) "Média máxima mensal"
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY), Cargo;
