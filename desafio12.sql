select
concat(e1.FIRST_NAME, ' ', e1.LAST_NAME) as 'Nome completo funcionário 1',
e1.SALARY as 'Salário funcionário 1',
e1.PHONE_NUMBER as 'Telefone funcionário 1',
concat(e2.FIRST_NAME, ' ', e2.LAST_NAME) as 'Nome completo funcionário 2',
e2.SALARY as 'Salário funcionário 2',
e2.PHONE_NUMBER as 'Telefone funcionário 2'
from hr.employees as e1, hr.employees as e2
where e1.JOB_ID = e2.JOB_ID and e1.EMPLOYEE_ID <> e2.EMPLOYEE_ID 
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
