select * 
from cse3dms.buildings
union
select * 
from cse3dms.paths
union
select * 
from cse3dms.items;

-- find the room size
select object_id, object_name, object_type, st_area(geom) size
from cse3dms.buildings b ;

-- path distance
select object_id, object_name, object_type, st_length(geom) len
from cse3dms.paths b ;

-- display all rooms and items
select b.object_id, b.object_name, b.object_type, i.object_name, i.object_type ,st_contains(b.geom,i.geom) stat
from cse3dms.buildings b , cse3dms.items i ;

-- display rooms that have the items
select b.object_id, b.object_name, b.object_type, i.object_name, i.object_type ,st_contains(b.geom,i.geom) stat
from cse3dms.buildings b , cse3dms.items i 
where b.object_type !='Building'
and st_contains(b.geom,i.geom)=true ;

-- Now, modify the query to show all of the rooms with the number of devices.
-- put zero if the room does not have any items in it 
select b.object_id, b.object_name, b.object_type, count(i.object_id) item 
from cse3dms.buildings b
left outer join cse3dms.items i 
on (st_contains(b.geom,i.geom)=true)
where b.object_type !='Building'
group by b.object_id, b.object_name, b.object_type;

-- Find the rooms that is located adjacent to the Kitchen. 
-- The rooms must not be the Kitchen itself or the Building
with kitchen as 
  (select geom 
   from cse3dms.buildings
   where object_name='Kitchen')
select object_id, object_name
from cse3dms.buildings b, kitchen k
where st_intersects(k.geom,b.geom)=true
and b.object_type not in ('Building','Kitchen');


-- The left area is defined as a rectangle CW (0.1,1.2), (1.0,1.2), (1.0,0.1), (0.1,0.1), (0.1, 1.2)
-- Find all rooms where the whole rooms must be inside the area
-- Display the map for the left area and all of the rooms
select object_id, object_name, geom, st_makepolygon(st_geomfromtext('linestring(0.1 1.2, 1.0 1.2, 1.0 0.1, 0.1 0.1, 0.1 1.2)')) left_area
from cse3dms.buildings b
where st_contains(st_makepolygon(st_geomfromtext('linestring(0.1 1.2, 1.0 1.2, 1.0 0.1, 0.1 0.1, 0.1 1.2)')),b.geom)=true;


-- modify previous question to include "Director" room in the result
select object_id, object_name, geom, st_makepolygon(st_geomfromtext('linestring(0.1 1.2, 1.0 1.2, 1.0 0.1, 0.1 0.1, 0.1 1.2)')) left_area
from cse3dms.buildings b
where st_intersects(st_makepolygon(st_geomfromtext('linestring(0.1 1.2, 1.0 1.2, 1.0 0.1, 0.1 0.1, 0.1 1.2)')),b.geom)=true
and b.object_type !='Building';


-- Find all meeting room entrances
with meeting as 
(select geom m_geom from cse3dms.buildings
 where object_type='Meeting')
select p.object_id , p.object_name , p.geom, m.m_geom
from cse3dms.paths p , meeting m
where st_touches(m.m_geom, p.geom);
 
-- show the centroid of all rooms
select object_id, object_name, st_centroid(geom)
from cse3dms.buildings b 
where object_type !='Building';

-- Show the distance from all rooms to the kitchen. Sort the result from the farthest until the closest.
-- Exclude kitchen from the result
with kitchen as
(select st_centroid(geom) k_geom
 from cse3dms.buildings 
 where object_type='Kitchen')
select b.object_id , b.object_name , st_centroid(b.geom)<->k.k_geom distance
from cse3dms.buildings b, kitchen k
where object_type!='Kitchen'
order by 3 desc; 

select object_type, st_union(geom) rooms, sum(st_area(geom)) t_area
from cse3dms.buildings b 
group by object_type;

-- find all rooms with the devices
select b.object_id, b.object_name, b.object_type
from cse3dms.buildings b 
join cse3dms.items i 
on (st_contains(b.geom,i.geom)=true)
where b.object_type !='Building'; 