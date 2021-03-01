DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN profissao VARCHAR(100))
BEGIN
	DECLARE id_profissao VARCHAR(100);
    SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE = profissao INTO id_profissao;
    
    SELECT ROUND(AVG(SALARY),2) AS "Média salarial"
    FROM hr.employees
    WHERE JOB_ID = id_profissao;
END $$

DELIMITER ;
