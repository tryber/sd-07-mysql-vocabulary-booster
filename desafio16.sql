USE hr;

DELIMITER |

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(1000))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE totalJ INT;
	SELECT COUNT(his.EMPLOYEE_ID) FROM hr.job_history AS his	
    INNER JOIN hr.employees AS emp
		ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
        WHERE emp.EMAIL = email
        GROUP BY his.EMPLOYEE_ID
        INTO totalJ;
	RETURN totalJ;
END |

DELIMITER;
