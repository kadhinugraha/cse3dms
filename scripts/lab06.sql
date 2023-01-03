
-- verify your data
select * 
from cse3dms.buildings
union
select * 
from cse3dms.paths
union
select * 
from cse3dms.items
union
select employee_id, last_name, job_id, geom 
from hr.employees e 
where geom is not null;

-- questions
-- 1 . Create spatial index
create index on cse3dms.buildings using gist(geom);
create index on cse3dms.paths using gist(geom);
create index on cse3dms.items using gist(geom);
create index on hr.employees using gist(geom);

-- Spatial Queries
-- 2. Find all employees that are currently in the Kitchen area
with kitchen as
(select geom from cse3dms.buildings 
 where object_name='Kitchen')
select employee_id, first_name||' '||last_name emp_name
from hr.employees e, kitchen k
where st_contains(k.geom,e.geom)=true;

-- 3. the President requires IT assistance.
--    Find the distance from the President to all IT staffs 
with it as
(select employee_id, geom
 from hr.employees 
 where job_id like 'IT%'),
 pres as
 (select employee_id, geom
  from hr.employees
  where job_id = 'AD_PRES')
select pres.employee_id, it.employee_id, pres.geom<->it.geom dist
from pres, it
order by dist;

-- 4. modify the query to show the staff's name 


with it as
(select employee_id, first_name||' '||last_name name, geom
 from hr.employees 
 where job_id like 'IT%'),
 pres as
 (select employee_id, geom
  from hr.employees
  where job_id = 'AD_PRES')
select it.employee_id,it.name
from pres, it
order by  pres.geom<->it.geom 
limit 1;

-- 5.	Modify the query to show the room where this nearest IT employee is located
select it.employee_id,it.first_name||' '||it.last_name name, b.object_name
from hr.employees it, 
    (select employee_id, geom
     from hr.employees
     where job_id = 'AD_PRES') pres,
     cse3dms.buildings b
where job_id like 'IT%'
and b.object_type!='Building'
and st_contains(b.geom,it.geom)=true
order by  pres.geom<->it.geom 
limit 1;

-- 6. Create a buffer to show the range of 1 unit from the President
select geom 
from cse3dms.buildings b 
union
select st_buffer(geom,1)
from hr.employees e 
where e.job_id ='AD_PRES';

-- 7. Find all managers within 1 unit from the President and their current locations
select e.employee_id, e.first_name||' '||e.last_name name, e.job_id, b.object_name  
from hr.employees e,
     hr.employees p,
     cse3dms.buildings b 
where p.job_id = 'AD_PRES'
and e.job_id like '%MAN'
and b.object_type !='Building'
and st_contains(b.geom, e.geom)=true
and e.geom<->p.geom <=1;

-- Find the rooms occupancy in this office
select object_id, object_name, object_type, count(e.employee_id)
from cse3dms.buildings b
left outer join hr.employees e 
on st_contains(b.geom,e.geom)=true
where object_type!='Building'
group by object_id, object_name;     

-- show the bins catchment within 0.5 unit from each rooms
select st_buffer(geom,0.5)
from cse3dms.items i 
where i.object_name like '%Bin'
union 
select geom from cse3dms.buildings b ;

-- show the distance between bins and rooms, where the distance is less than 0.5 unit
select b.object_name , i.object_id ,i.object_name , b.geom<->i.geom dist
from cse3dms.items i,
     cse3dms.buildings b 
where i.object_name like '%Bin'
and b.object_type !='Building'
and st_intersects(st_buffer(i.geom,0.5),b.geom)=true
order by 1;

-- show the number of accessible bins from each rooms
select b.object_name,  
		sum(case 
			when st_intersects(st_buffer(i.geom,0.5),b.geom)=true then 1
			else 0
		end) accessible
from cse3dms.buildings b, cse3dms.items i
where i.object_name like '%Bin'
and b.object_type !='Building'
group by b.object_name
order by 2 desc;



select * from hr.employees e ;