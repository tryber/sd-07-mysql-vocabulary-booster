SELECT 
ctrs.COUNTRY_NAME as 'País', 
IF(regs.REGION_NAME = 'Europe', 'incluído', 'não incluído') as 'Status Inclusão'  
FROM hr.countries as ctrs
INNER JOIN hr.regions as regs
ON ctrs.REGION_ID = regs.REGION_ID
ORDER BY ctrs.COUNTRY_NAME;
