--Q6
select p1.LName,p1.PHone_NUM
from Owns o1,Person p1
where o1.Pdate between '2023-01-01' AND '2023-01-31' AND o1.Owner_SSN = p1.SSN