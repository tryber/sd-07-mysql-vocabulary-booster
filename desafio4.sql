SELECT hr.jobs.JOB_TITLE as Cargo, round(avg(hr.employees.SALARY),2) as "Média salarial",
CASE
    WHEN avg(hr.employees.SALARY) >= 2000 and avg(hr.employees.SALARY) <= 5800 THEN "Júnior"
    WHEN avg(hr.employees.SALARY) >= 5801 and avg(hr.employees.SALARY) <= 7500 THEN "Pleno"
    WHEN avg(hr.employees.SALARY) >= 7501 and avg(hr.employees.SALARY) <= 10500 THEN "Sênior"
    WHEN avg(hr.employees.SALARY) > 10500 THEN "CEO"
end as "Senioridade"
FROM hr.employees
INNER JOIN hr.jobs
on hr.employees.JOB_ID = hr.jobs.JOB_ID
group by hr.employees.JOB_ID
order by avg(hr.employees.SALARY), hr.employees.JOB_ID;
