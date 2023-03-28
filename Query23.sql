--Q23
--Top 5 hangar location capacities
select Top 5*
from Hangar h1
order by h1.Capacity desc

--avg salary spent on each plane
select a1.REG_NUM, avg(s1.TimeServiced) average_time_spent
from Sevices s1, Airplane a1
where s1.ANUM = a1.REG_NUM
group by a1.REG_NUM
order by avg(s1.TimeServiced) desc

--avg hours worked on each shift
select e1.Shift_time, avg(e1.H_Worked) average_time_worked
from EMP e1
group by e1.Shift_time



-- top 5 capacity planes
select top 5 a1.REG_NUM, t1.Capacity
from Airplane a1, Plane_Type t1
order by t1.Capacity desc

