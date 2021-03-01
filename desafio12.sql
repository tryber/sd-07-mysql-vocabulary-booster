SELECT CONCAT(EMP1.FIRST_NAME, ' ', EMP1.LAST_NAME)  "Nome completo funcionário 1",
EMP1.SALARY "Salário funcionário 1",
EMP1.PHONE_NUMBER "Telefone funcionário 1" ,
CONCAT(EMP2.FIRST_NAME, ' ', EMP2.LAST_NAME) "Nome completo funcionário 2",
EMP2.SALARY "Salário funcionário 2",
EMP2.PHONE_NUMBER "Telefone funcionário 2"
FROM hr.employees EMP1, hr.employees EMP2
WHERE EMP1.JOB_ID = EMP2.JOB_ID AND
CONCAT(EMP1.FIRST_NAME, ' ', EMP1.LAST_NAME) <> CONCAT(EMP2.FIRST_NAME, ' ', EMP2.LAST_NAME)
ORDER BY CONCAT(EMP1.FIRST_NAME, ' ', EMP1.LAST_NAME),
CONCAT(EMP2.FIRST_NAME, ' ', EMP2.LAST_NAME);
