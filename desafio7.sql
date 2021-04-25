select
ucase(concat(em.FIRST_NAME, " ", em.LAST_NAME)) as "Nome completo",
jb.START_DATE as "Data de início",
em.SALARY as "Salário"
from hr.job_history as jb
inner join hr.employees as em
on jb.EMPLOYEE_ID = em.EMPLOYEE_ID
where month(jb.START_DATE) = 1
or month(jb.START_DATE) = 2
or month(jb.START_DATE) = 3
order by concat(em.FIRST_NAME, " ", em.LAST_NAME), jb.START_DATE;
