SELECT
j.JOB_TITLE  as 'Cargo',
round(avg(x.SALARY),2) as 'Média salarial',
case
when round(avg(x.SALARY),2) between 2000 and 5800 then 'Júnior'
when round(avg(x.SALARY),2) between 5801 and 7500 then 'Pleno'
when round(avg(x.SALARY),2) between 7501 and 10500 then 'Sênior'
else 'CEO'
END as 'Senioridade'
FROM hr.employees x
left join hr.jobs j on j.JOB_ID = x.JOB_ID
group by x.JOB_ID
order by
2 ASC,
j.JOB_TITLE ASC;
