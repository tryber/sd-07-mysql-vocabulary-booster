SELECT JOB_TITLE as Cargo,
(MAX_SALARY - MIN_SALARY) as "Variação Salarial",
round(avg(MIN_SALARY),2)/12 as "Média mínima mensal",
round(avg(MAX_SALARY),2)/12 as "Média máxima mensal"
FROM hr.jobs
group by JOB_ID
order by avg(MAX_SALARY - MIN_SALARY), JOB_TITLE;
