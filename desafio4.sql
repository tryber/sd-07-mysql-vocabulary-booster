select
jo.JOB_TITLE as "Cargo",
round(avg(em.SALARY), 2) as "Média salarial",
case
when round(avg(em.SALARY), 2) >= 2000 and round(avg(em.SALARY), 2) <= 5800 then "Júnior"
when round(avg(em.SALARY), 2) >= 5801 and round(avg(em.SALARY), 2) <= 7500 then "Pleno"
when round(avg(em.SALARY), 2) >= 7501 and round(avg(em.SALARY), 2) <= 10500 then "Sênior"
else "CEO"
end as "Senioridade"
from hr.employees as em
inner join hr.jobs as jo
on em.JOB_ID = jo.JOB_ID
group by em.JOB_ID
order by round(avg(em.SALARY), 2);
