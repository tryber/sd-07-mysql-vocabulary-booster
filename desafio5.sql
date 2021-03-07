SELECT JOB_ID as Cargo,
(MAX_SALARY - MIN_SALARY) as "Variação Salarial",
round(avg(MIN_SALARY),2) as "Média mínima mensal",
round(avg(MAX_SALARY),2) as "Média máxima mensal"
FROM hr.jobs
group by JOB_ID
order by avg(MAX_SALARY - MIN_SALARY), JOB_ID;
