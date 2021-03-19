select concat(hre0.FIRST_NAME, " ", hre0.LAST_NAME) as "Nome completo funcionário 1",
hre0.salary as "Salário funcionário 1",
hre0.PHONE_NUMBER as  "Telefone funcionário 1",
concat(hre1.FIRST_NAME, " ", hre1.LAST_NAME) as "Nome completo funcionário 2",
hre1.salary as "Salário funcionário 2",
hre1.PHONE_NUMBER as  "Telefone funcionário 2"
from hr.employees as hre0,
hr.employees as hre1
where hre0.JOB_ID = hre1.JOB_ID
and hre0.EMPLOYEE_ID <> hre1.EMPLOYEE_ID
group by hre0.EMPLOYEE_ID, hre1.EMPLOYEE_ID
order by `Nome completo funcionário 1`, `Nome completo funcionário 2` asc;
