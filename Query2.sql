--Q2
select o1.Owner_Name,c1.address
from Corporation c1,Owns o1,Plane_Type t1, Airplane a1
where c1.Name = o1.Owner_Name AND t1.Capacity > 200 and o1.Plane_num = a1.REG_NUM and a1.OF_TYPE = t1.ModelNumber