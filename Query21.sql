--Q21
select o1.Owner_SSN, count(o1.Owner_SSN)
from Owns o1, Person p1
where o1.Owner_SSN = p1.SSN
group by o1.Owner_SSN
having count(o1.Owner_SSN) >= 1