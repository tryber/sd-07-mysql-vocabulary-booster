SELECT CONCAT(F.FIRST_NAME,' ',F.LAST_NAME) AS 'Nome completo funcionário 1',
	F.SALARY AS 'Salário funcionário 1',
    F.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(FF.FIRST_NAME,' ',FF.LAST_NAME) AS 'Nome completo funcionário 2',
    FF.SALARY AS 'Salário funcionário 2',
    FF.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS F, hr.employees AS FF
WHERE F.JOB_ID = FF.JOB_ID
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY 1, 4;
