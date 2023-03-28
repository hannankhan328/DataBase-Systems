--Q20
select e1.Shift_time, avg(e1.Salary)
from EMP e1
group by e1.Shift_time
having count(e1.Shift_time) >= 1