--Q8
select h1.HLocation, Capacity
from Hangar h1
where Capacity = (select max(capacity) from hangar)