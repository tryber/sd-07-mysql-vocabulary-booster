select JOB_TITLE as Cargo,
if(MAX_SALARY > 30000, 'Altíssimo',
if(MAX_SALARY > 20000, 'Alto',
if(MAX_SALARY > 10000, 'Médio', 'Baixo'))) as Nível
from hr.jobs
order by JOB_TITLE;
