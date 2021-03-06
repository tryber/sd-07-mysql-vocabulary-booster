select
job_title as 'Cargo',
(MAX_SALARY-MIN_SALARY) as 'Variação Salarial',
round(AVG(MIN_SALARY / 12), 2) as 'Média mínima mensal',
round(AVG(MAX_SALARY / 12), 2) as 'Média máxima mensal'
from hr.jobs
group by JOB_ID
order by `Variação Salarial`, `Cargo`;
