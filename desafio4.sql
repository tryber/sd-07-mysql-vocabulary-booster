SELECT JOB_ID as Cargo, round(avg(SALARY),2) as "Média salarial",
CASE
    WHEN avg(SALARY) >= 2000 and avg(SALARY) <= 5800 THEN "Júnior"
    WHEN avg(SALARY) >= 5801 and avg(SALARY) <= 7500 THEN "Pleno"
    WHEN avg(SALARY) >= 7501 and avg(SALARY) <= 10500 THEN "Sênior"
    WHEN avg(SALARY) > 10500 THEN "CEO"
end as "Senioridade"
FROM hr.employees
group by JOB_ID
order by avg(SALARY), JOB_ID;
