--Q13
select b1.LName
from Sevices s1, Pilot p1, Airplane a1, Person b1
where s1.working = 1 and a1.REG_NUM = s1.ANUM and a1.OF_TYPE = p1.CAN_FLY and b1.SSN = p1.SSN