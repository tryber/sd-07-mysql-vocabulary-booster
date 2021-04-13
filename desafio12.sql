SELECT
	CONCAT(EA.FIRST_NAME, ' ', EA.LAST_NAME) AS 'Nome completo funcionário 1',
    EA.SALARY AS 'Salário funcionário 1',
    EA.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(EB.FIRST_NAME, ' ', EB.LAST_NAME) AS 'Nome completo funcionário 2',
    EB.SALARY AS 'Salário funcionário 2',
    EB.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
	hr.employees EA,
    hr.employees EB
WHERE
	EA.EMPLOYEE_ID <> EB.EMPLOYEE_ID
    AND EA.JOB_ID = EB.JOB_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;