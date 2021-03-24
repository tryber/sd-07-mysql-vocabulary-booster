DELIMITER $
CREATE PROCEDURE exibir_historico_completo_por_funcionario (P_NAME VARCHAR(30))
BEGIN
SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
J.JOB_TITLE AS `Cargo`,
D.DEPARTMENT_NAME AS `Departamento`
FROM job_history JH
INNER JOIN jobs J
ON JH.JOB_ID = J.JOB_ID
INNER JOIN departments D
ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN employees E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = P_NAME
ORDER BY `Cargo`;
END
$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
