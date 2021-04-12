SELECT
JOB_TITLE as Cargo,
cast((MAX_SALARY/12) as decimal(10,2)) as `Média máxima mensal`,
cast((MIN_SALARY/12) as decimal(10,2)) as `Média mínima mensal`,
(MAX_SALARY-MIN_SALARY) as `Variação Salarial`
from jobs
ORDER BY (MAX_SALARY-MIN_SALARY) ASC, JOB_TITLE
