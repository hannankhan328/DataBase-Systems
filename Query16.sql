--Q16
select p1.LName, p1.Address
from owns o1, Person p1, Corporation c1
where o1.Owner_SSN = p1.SSN AND o1.Plane_num in (select o1.Plane_num from owns o1, Person p1, Corporation c1 where c1.Name = o1.Owner_Name )
group by p1.LName,p1.Address