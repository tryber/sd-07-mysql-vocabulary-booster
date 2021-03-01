SELECT 
JOBS.JOB_TITLE AS Cargo,
round(avg (employees.SALARY),2) as 'Média salarial',
case 
when avg (employees.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
when avg (employees.SALARY) BETWEEN  5801 AND 7500 THEN 'Pleno'
when avg (employees.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
when avg (employees.SALARY) > 10500 then 'CEO'
end as Senioridade
from hr.jobs AS JOBS INNER JOIN hr.employees as employees on JOBS.JOB_ID = employees.JOB_ID 
group by JOBS.JOB_TITLE 
ORDER BY 'Média salarial', JOBS.JOB_TITLE;