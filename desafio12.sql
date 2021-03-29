SELECT 
CONCAT(Tab1.FIRST_NAME,' ',Tab1.LAST_NAME) AS 'Nome completo funcionário 1',
Tab1.SALARY AS 'Salário funcionário 1',
Tab1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(Tab2.FIRST_NAME,' ',Tab2.LAST_NAME) AS 'Nome completo funcionário 2',
Tab2.SALARY AS 'Salário funcionário 2',
Tab2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS Tab1, hr.employees AS Tab2
WHERE Tab1.JOB_ID = Tab2.JOB_ID
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY 1, 4;
