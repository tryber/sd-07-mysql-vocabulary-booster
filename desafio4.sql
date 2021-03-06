SELECT
x.JOB_ID  as 'Cargo',
round(avg(x.SALARY),2) as 'Média salarial',
case
when round(avg(x.SALARY),2) between 2000 and 5800 then 'Júnior'
when round(avg(x.SALARY),2) between 5801 and 7500 then 'Pleno'
when round(avg(x.SALARY),2) between 7501 and 10500 then 'Sênior'
else 'CEO'
END as 'Senioridade'
FROM hr.employees x
group by 1
order by 2 DESC;
