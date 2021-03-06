select j.job_title as 'Cargo', round(avg(e.salary), 2) as 'Média salarial',
case
when round(avg(salary), 2) between 2000 and 5800 then 'Júnior'
when round(avg(salary), 2) between 5801 and 7500 then 'Pleno'
when round(avg(salary), 2) between 7501 and 10500 then 'Sênior'
when round(avg(salary), 2) > 10500 then 'CEO'
end as Senioridade
from hr.jobs as j
inner join hr.employees as e
on j.JOB_ID = e.JOB_ID
group by j.JOB_ID
order by `Média Salarial`, j.job_title;
