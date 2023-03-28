--Q15
select o1.Plane_num, o1.Owner_SSN
from owns o1, Sevices s1, Airplane a1
where o1.Owner_Name = null And o1.Plane_num in (select s1.ANUM from Sevices s1, Maintains m1, EMP e1 where s1.SNUM = m1.SERVICE_NUM AND m1.ESSN = e1.SSN and e1.Shift_time = 1)