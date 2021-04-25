select
concat(emp1.FIRST_NAME, " ", emp1.LAST_NAME) as "Nome completo funcionário 1",
emp1.SALARY as "Salário funcionário 1",
emp1.PHONE_NUMBER as "Telefone funcionário 1",
concat(emp2.FIRST_NAME, " ", emp2.LAST_NAME) as "Nome completo funcionário 2",
emp2.SALARY as "Salário funcionário 2",
emp2.PHONE_NUMBER as "Telefone funcionário 2"
from hr.employees as emp1, hr.employees as emp2
where emp1.JOB_ID = emp2.JOB_ID and emp1.EMPLOYEE_ID != emp2.EMPLOYEE_ID
order by concat(emp1.FIRST_NAME, " ", emp1.LAST_NAME),
concat(emp2.FIRST_NAME, " ", emp2.LAST_NAME);
