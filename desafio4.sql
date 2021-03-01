SELECT job.JOB_TITLE as Cargo,
round(avg(employee.SALARY), 2) as "Média salarial",
if(round(avg(employee.SALARY), 2) > 10500, 'CEO',
if(round(avg(employee.SALARY), 2) > 7500, 'Sênior',
if(round(avg(employee.SALARY), 2) > 5800, 'Pleno', 'Júnior'))) as Senioridade
FROM hr.jobs as job
inner join hr.employees as employee
on job.JOB_ID = employee.JOB_ID
group by employee.JOB_ID
order by `Média salarial`;
