--Q18
select t1.ModelNumber, count(t1.ModelNumber)
from Airplane a1, Plane_Type t1
where a1.OF_TYPE = t1.ModelNumber
group by t1.ModelNumber