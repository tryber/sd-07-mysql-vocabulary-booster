select
upper(concat(FIRST_NAME, ' ', LAST_NAME)) as 'Nome completo',
HIRE_DATE as 'Data de início',
SALARY as 'Salário'
from hr.employees
order by
1, 2;
