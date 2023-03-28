
--Q9
select o1.Plane_num, count(o1.Plane_num)
from owns o1, Corporation c1
where o1.Owner_Name = c1.Name
group by o1.Plane_num
having count(o1.Plane_num)>=1 