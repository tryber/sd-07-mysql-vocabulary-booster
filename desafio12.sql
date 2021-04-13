select (concat(e1.First_name,' ',e1.Last_Name)) as 'Nome completo funcionário 1',
e1.SALARY as 'Salário funcionário 1',
e1.PHONE_NUMBER as 'Telefone funcionário 1',
(concat(e2.First_name,' ',e2.Last_Name)) as 'Nome completo funcionário 2',
e2.SALARY as 'Salário funcionário 2',
e2.PHONE_NUMBER as 'Telefone funcionário 2'
from hr.employees as e1, hr.employees as e2
Where e1.JOB_ID = e2.JOB_ID
having `Nome completo funcionário 1` != `Nome completo funcionário 2`
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
