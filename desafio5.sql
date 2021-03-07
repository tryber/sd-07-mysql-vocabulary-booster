SELECT JOB_TITLE as Cargo,
(MAX_SALARY - MIN_SALARY)/12 as "Variação Salarial",
round(avg(MIN_SALARY)/12,2) as "Média mínima mensal",
round(avg(MAX_SALARY)/12,2) as "Média máxima mensal"
FROM hr.jobs
group by JOB_TITLE
order by avg(MAX_SALARY - MIN_SALARY), JOB_TITLE;
