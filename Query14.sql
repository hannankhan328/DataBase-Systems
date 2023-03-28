--Q14
select p1.LName
from EMP e1, owns o1, Corporation c1, Maintains m1, Sevices s1, Person p1
where o1.Owner_Name = c1.Name and o1.Plane_num = s1.ANUM  and s1.SNUM = m1.SERVICE_NUM and m1.ESSN = p1.SSN
group by p1.LName
order by p1.LName