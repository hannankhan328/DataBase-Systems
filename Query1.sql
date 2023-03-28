--Q1
select REG_NUM
from Airplane
where REG_NUM not in (select ANUM from Sevices)