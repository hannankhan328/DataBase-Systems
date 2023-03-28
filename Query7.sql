--Q7
select c1.Plic, count(c1.Plic)
from pilot p1, Can_Fly c1
where p1.LIC_NUM = c1.Plic
group by c1.Plic
having count(c1.Plic) >= 1