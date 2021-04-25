select
j.JOB_TITLE as 'Cargo',
(max(j.MAX_SALARY) - min(j.MIN_SALARY)) as 'Variação Salarial',
round((min(j.MIN_SALARY)/ 12), 2) as 'Média mínima mensal',
round((max(j.MAX_SALARY)/ 12), 2) as 'Média máxima mensal'
from hr.employees e
left join hr.jobs j on e.JOB_ID = j.JOB_ID
group by 1
order by
2 ASC,
j.JOB_TITLE ASC;
