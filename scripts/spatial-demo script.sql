CREATE TABLE cse3dms.polygons
(id int primary key,
 name varchar(20),
 geom geometry);
 
CREATE TABLE cse3dms.lines
(id int primary key,
 name varchar(20),
 geom geometry);
 
CREATE TABLE cse3dms.points
(id int primary key,
 name varchar(20),
 geom geometry);
 
insert into cse3dms.polygons values(1,'A1',st_makepolygon('linestring(0 3,1 3, 1 2, 0 2, 0 3 )'));
insert into cse3dms.polygons values(2,'A2',st_makepolygon('linestring(1 3,2 3, 2 2, 1 2, 1 3 )'));
insert into cse3dms.polygons values(3,'A3',st_makepolygon('linestring(2 3,3 3, 3 2, 2 2, 2 3 )'));
insert into cse3dms.polygons values(4,'B1',st_makepolygon('linestring(0 2,1 2, 1 1, 0 1, 0 2 )'));
insert into cse3dms.polygons values(5,'B2',st_makepolygon('linestring(1 2,2 2, 2 1, 1 1, 1 2 )'));
insert into cse3dms.polygons values(6,'B3',st_makepolygon('linestring(2 2,3 2, 3 1, 2 1, 2 2 )'));
insert into cse3dms.polygons values(7,'C1',st_makepolygon('linestring(0 1,1 1, 1 0, 0 0, 0 1 )'));
insert into cse3dms.polygons values(8,'C2',st_makepolygon('linestring(1 1,2 1, 2 0, 1 0, 1 1 )'));
insert into cse3dms.polygons values(9,'C3',st_makepolygon('linestring(2 1,3 1, 3 0, 2 0, 2 1 )'));
insert into cse3dms.polygons values(0,'D1',st_makepolygon('linestring(1 3,3 3, 3 1, 1 1, 1 3)'));


insert into cse3dms.lines values(10,'Main Road', st_geomfromtext('linestring(0 0.5, 1.5 0.5, 1.5 2.5,3 2.5 )'));
insert into cse3dms.lines values(11,'Residential Rd',st_geomfromtext('linestring(1.5 1.5, 2.75 1.5, 2.75 2.5)'));
insert into cse3dms.lines values(12,'Left Road',st_geomfromtext('linestring(0.25 0.5, 0.75 3)'));

insert into cse3dms.points values(21,'P1',st_point(0.25,0.75));
insert into cse3dms.points values(22,'P2',st_point(1.25,0.75));
insert into cse3dms.points values(23,'P3',st_point(1.65,0.35));
insert into cse3dms.points values(24,'P4',st_point(2.65,1.35));
insert into cse3dms.points values(25,'P5',st_point(1.75,1.35));
insert into cse3dms.points values(26,'P6',st_point(1.25,1.75));
insert into cse3dms.points values(27,'P7',st_point(0.65,2.35));
insert into cse3dms.points values(28,'P8',st_point(0.75,1.35));
insert into cse3dms.points values(29,'P9',st_point(2.45,2.75));
insert into cse3dms.points values(30,'P10',st_point(1.65,2.75));

select * from cse3dms.polygons
union 
select * from cse3dms.lines
union
select * from cse3dms.points;
