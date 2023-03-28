--Q10
select t1.ModelNumber,count(t1.ModelNumber), AVG(s1.TimeServiced)
from Plane_Type t1, Airplane a1, Sevices s1
where s1.ANUM = a1.REG_NUM AND a1.OF_TYPE = t1.ModelNumber
group by t1.ModelNumber
having count(t1.ModelNumber) >= 1