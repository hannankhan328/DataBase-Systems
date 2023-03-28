--Q19
select s1.ANUM, count(s1.ANUM)
from Airplane a1, Sevices s1
where a1.REG_NUM = s1.ANUM
group by s1.ANUM
having count(s1.ANUM) >= 1