select
jo.JOB_TITLE as "Cargo",
(jo.MAX_SALARY - jo.MIN_SALARY) as "Variação Salarial",
round(avg(jo.MIN_SALARY / 12), 2) as "Média mínima mensal",
round(avg(jo.MAX_SALARY / 12), 2) as "Média máxima mensal"
from hr.employees as em
inner join hr.jobs as jo
on em.JOB_ID = jo.JOB_ID
group by em.JOB_ID
order by (jo.MAX_SALARY - jo.MIN_SALARY), jo.JOB_TITLE;
