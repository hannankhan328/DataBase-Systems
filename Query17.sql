
--Q17
select h1.HangarNumber, count(h1.HangarNumber)
from Hangar h1, Airplane a1
where h1.HangarNumber = a1.STORED_IN
group by h1.HangarNumbers