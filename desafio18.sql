SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo`,
DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') `Data de início`,
DATE_FORMAT(JH.END_DATE, '%d/%m/%Y')  `Data de rescisão`,
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE)/365.25, 2) `Anos trabalhados`
FROM hr.job_history JH, hr.employees E
WHERE E.EMPLOYEE_ID=JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;

-- Fonte: https://www.dirceuresende.com/blog/sql-server-como-calcular-a-diferenca-em-anos-idade-entre-duas-datas-utilizando-tsql-ou-clr/#:~:text=C%C3%A1lculo%20de%20idade%20utilizando%20Transact%2DSQL%20e%20divis%C3%A3o%20por%20365.25,esse%20valor%20por%20365%2C25.
