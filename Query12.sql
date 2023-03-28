--Q12
select p1.LName, p1.PHone_NUM
from owns o1, Corporation c1, hangar h1, Airplane a1, Person p1
where o1.Owner_SSN = p1.SSN AND o1.Plane_num in (select o1.Plane_num from owns o1, Person p1, Corporation c1 where c1.Name = o1.Owner_Name ) AND a1.STORED_IN = h1.HangarNumber and h1.HLocation = p1.Address
group by p1.LName, p1.PHone_NUM