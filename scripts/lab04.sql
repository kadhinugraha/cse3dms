-- DDL 
drop table if exists cse3dms.buildings;
create table cse3dms.buildings
(
	object_id 		int primary key,
	object_name 	varchar(50) not null,
	object_type		varchar(10) not null check(object_type in ('Meeting','Office','Toilet','Kitchen','Building','Utility')),
	geom 			geometry	
);

drop table if exists cse3dms.paths;
create table cse3dms.paths
(
	object_id 		int primary key,
	object_name 	varchar(50) not null,
	object_type		varchar(10) not null check(object_type in ('Corridor','Entrance')),
	geom 			geometry	
);

drop table if exists cse3dms.items;
create table cse3dms.items
(
	object_id 		int primary key,
	object_name 	varchar(50) not null,
	object_type		varchar(10) not null check(object_type in ('Appliances','Devices','Tools','Misc')),
	geom 			geometry	
);

-- Building / Room Geometry
insert into cse3dms.buildings
values (1000,'Atlantis','Building',
st_makepolygon( st_geomfromtext('linestring(0.1 0.1, 0.1 0.3, 0.1 0.8, 0.1 1.2, 
						0.3 1.2, 0.5 1.2, 
						0.5 1.0, 0.5 0.9, 
						0.6 0.9, 0.7 0.9, 
						0.7 1.2, 0.9 1.2, 
						1.4 1.2, 1.6 1.2, 2.0 1.2, 
						2.0 0.6, 2.0 0.5, 
						1.6 0.1, 1.4 0.1, 1.2 0.1, 1.1 0.1, 1.0 0.1, 0.1 0.1)'))
);

-- R-01
insert into cse3dms.buildings
values (1101,'R-01 Discussion Room','Meeting',
st_makepolygon( st_geomfromtext('linestring(0.3 1.2, 0.5 1.2, 0.5 1, 0.3 1, 0.3 1.2)')));

-- R-02
insert into cse3dms.buildings
values (1102,'R-02 Discussion Room','Meeting',
st_makepolygon( st_geomfromtext('linestring(0.1 1.2, 0.3 1.2, 0.3 1, 0.3 0.8, 0.1 0.8, 0.1 1.2)')));

-- R-03
insert into cse3dms.buildings
values (1103,'R-03 Presentation Room','Meeting',
st_makepolygon( st_geomfromtext('linestring(0.1 0.8, 0.3 0.8, 0.3 0.3, 0.1 0.3, 0.1 0.8)')));

-- R-04
insert into cse3dms.buildings
values (1104,'R-04 Meeting Room','Meeting',
st_makepolygon( st_geomfromtext('linestring(0.1 0.3, 1 0.3, 1 0.1, 0.1 0.1, 0.1 0.3)')));

-- R-05
insert into cse3dms.buildings
values (1105,'R-05 Staff Room','Office',
st_makepolygon( st_geomfromtext('linestring(0.4 0.8, 0.8 0.8, 0.8 0.4, 0.4 0.4, 0.4 0.8)')));

-- R-06
insert into cse3dms.buildings
values (1106,'R-06 Administration','Office',
st_makepolygon( st_geomfromtext('linestring(0.8 0.8, 1 0.8, 1 0.4, 0.8 0.4, 0.8 0.8)')));

-- R-08
insert into cse3dms.buildings
values (1108,'R-08 Finance','Office',
st_makepolygon( st_geomfromtext('linestring(0.7 1.2, 0.9 1.2, 0.9 0.9, 0.7 0.9, 0.7 1.2)')));

-- R-09
insert into cse3dms.buildings
values (1109,'R-09 Director','Office',
st_makepolygon( st_geomfromtext('linestring(0.9 1.2, 1.4 1.2, 1.4 1, 0.9 1, 0.9 1.2)')));

-- R-10
insert into cse3dms.buildings
values (1110,'R-10 IT Development','Office',
st_makepolygon( st_geomfromtext('linestring(1.2 0.9, 1.7 0.9, 1.7 0.6, 1.5 0.4, 1.2 0.4, 1.2 0.9)')));

-- Toilet A
insert into cse3dms.buildings
values (1201,'Toilet A','Toilet',
st_makepolygon( st_geomfromtext('linestring(1.2 0.3, 1.4 0.3, 1.4 0.1, 1.2 0.1, 1.2 0.3)')));

-- Toilet B
insert into cse3dms.buildings
values (1202,'Toilet B','Toilet',
st_makepolygon( st_geomfromtext('linestring(1.4 0.3, 1.6 0.3, 1.6 0.1, 1.4 0.1, 1.4 0.3)')));

-- utility Room
insert into cse3dms.buildings
values (1301,'Utility Room','Utility',
st_makepolygon( st_geomfromtext('linestring(1.6 0.3, 1.8 0.5, 2 0.5, 1.6 0.1, 1.6 0.3)')));

-- Kitchen
insert into cse3dms.buildings
values (1401,'Kitchen','Kitchen',
st_makepolygon( st_geomfromtext('linestring(1.6 1.2, 2 1.2, 2 0.6, 1.7 0.6, 1.7 0.9, 1.6 0.9, 1.6 1.2)')));

----------------------------------
-- PATH Constructions 
insert into cse3dms.paths
values('3001','Left Corridor','Corridor',
     st_geomfromtext('linestring( 1.1 0.85, 
                                  0.85 0.85, 
                                  0.75 0.85, 
                                  0.6 0.85, 
                                  0.45 0.85, 
                                  0.45 0.95, 
                                  0.35 0.95, 
                                  0.35 0.85, 
                                  0.35 0.75, 
                                  0.35 0.35, 
                                  0.75 0.35, 
                                  0.95 0.35, 
                                  1.1 0.35)'));
								  
								  insert into cse3dms.paths
values('3002','Right Corridor','Corridor',st_geomfromtext('linestring(1.1 0.95, 1.25 0.95, 1.6 0.95, 1.8 0.95, 1.8 0.85, 1.8 0.6, 1.6 0.4, 1.55 0.35, 1.45 0.35, 1.35 0.35, 1.25 0.35, 1.1 0.35)'));

insert into cse3dms.paths
values('3003','Center Corridor','Corridor',st_geomfromtext('linestring(1.1 0.1, 1.1 0.35, 1.1 0.85, 1.1 0.95)'));

insert into cse3dms.paths
values('3101','Entrance','Entrance',st_geomfromtext('linestring(0.6 0.9, 0.6 0.85)'));

insert into cse3dms.paths
values('3102','Entrance','Entrance',st_geomfromtext('linestring(0.45 0.95, 0.45 1)'));

insert into cse3dms.paths
values('3103','Entrance','Entrance',st_geomfromtext('linestring(0.35 0.85, 0.3 0.85)'));

insert into cse3dms.paths
values('3104','Entrance','Entrance',st_geomfromtext('linestring(0.35 0.75, 0.3 0.75)'));

insert into cse3dms.paths
values('3105','Entrance','Entrance',st_geomfromtext('linestring(0.35 0.35, 0.35 0.3)'));

insert into cse3dms.paths
values('3106','Entrance','Entrance',st_geomfromtext('linestring(0.75 0.35, 0.75 0.4)'));

insert into cse3dms.paths
values('3107','Entrance','Entrance',st_geomfromtext('linestring(0.95 0.35, 0.95 0.3)'));

insert into cse3dms.paths
values('3108','Entrance','Entrance',st_geomfromtext('linestring(0.95 0.35, 0.95 0.4)'));

insert into cse3dms.paths
values('3109','Entrance','Entrance',st_geomfromtext('linestring(1.25 0.35, 1.25 0.4)'));

insert into cse3dms.paths
values('3110','Entrance','Entrance',st_geomfromtext('linestring(1.35 0.35, 1.35 0.3)'));

insert into cse3dms.paths
values('3111','Entrance','Entrance',st_geomfromtext('linestring(1.45 0.35, 1.45 0.3)'));

insert into cse3dms.paths
values('3112','Entrance','Entrance',st_geomfromtext('linestring(1.6 0.4, 1.65 0.35)'));

insert into cse3dms.paths
values('3113','Entrance','Entrance',st_geomfromtext('linestring(1.8 0.85, 1.7 0.85)'));

insert into cse3dms.paths
values('3114','Entrance','Entrance',st_geomfromtext('linestring(1.25 0.95, 1.25 1)'));

insert into cse3dms.paths
values('3115','Entrance','Entrance',st_geomfromtext('linestring(1.25 0.95, 1.25 0.9)'));

insert into cse3dms.paths
values('3116','Entrance','Entrance',st_geomfromtext('linestring(1.1 0.95, 0.9 0.95)'));

insert into cse3dms.paths
values('3117','Entrance','Entrance',st_geomfromtext('linestring(0.85 0.85, 0.85 0.8)'));

insert into cse3dms.paths
values('3118','Entrance','Entrance',st_geomfromtext('linestring(0.75 0.85, 0.75 0.8)'));


---------------------------------------------------
-- POIs
-- bin
insert into cse3dms.items
values('5001','Recycle Bin','Misc', st_point(0.325,0.975));

insert into cse3dms.items
values('5002','Recycle Bin','Misc', st_point(0.325,0.325));

insert into cse3dms.items
values('5003','Recycle Bin','Misc', st_point(1.7,1.15));

insert into cse3dms.items
values('5004','Rubbish Bin','Misc', st_point(1.75,1.15));

-- devices
insert into cse3dms.items
values('5101','LCD Projector','Devices', st_point(0.2, 0.35));

insert into cse3dms.items
values('5102','LCD Projector','Devices', st_point(0.9, 0.2));

insert into cse3dms.items
values('5103','Video Conference Device','Devices', st_point(0.8, 0.2));

insert into cse3dms.items
values('5104','Photocopier','Devices', st_point(1.45,1.15));

insert into cse3dms.items
values('5105','Server Rack','Devices', st_point(1.6, 0.6));

-- tools
insert into cse3dms.items
values('5201','Climate Control','Tools', st_point(0.95, 0.45));

-- Appliances
insert into cse3dms.items
values('5301','Fridge','Appliances', st_point(1.95, 0.9));

insert into cse3dms.items
values('5302','Microwave','Appliances', st_point(1.95, 1));

insert into cse3dms.items
values('5303','Coffee Maker','Appliances', st_point(1.95, 1.05));

insert into cse3dms.items
values('5304','Sink','Appliances', st_point(1.9, 1.15));

insert into cse3dms.items
values('5305','Kitchen Bench','Misc', st_makepolygon(st_geomfromtext('linestring(1.8 1.2, 2 1.2, 2 0.95, 1.95 0.95, 1.95 1.15, 1.8 1.15, 1.8 1.2)')));


-- Verify the data
select * 
from cse3dms.buildings
union
select * 
from cse3dms.paths
union
select * 
from cse3dms.items;

----- 
-- La Trobe Settings
create table cse3dms.ltu_buildings as
select * from cse3dms.buildings 
where 1>2;

create table cse3dms.ltu_paths as
select * from cse3dms.paths 
where 1>2;

create table cse3dms.ltu_cafes as
select * from cse3dms.items 
where 1>2;

-- create buildings
select st_point(145.04842538133056,-37.72071934719953)

delete from cse3dms.ltu_buildings;

insert into cse3dms.ltu_buildings 
values (1001, 'Student Union','Building',
		st_makepolygon(st_geomfromtext('LINESTRING(
		145.0480758216422 -37.72052528577825, 
		145.0480726053599 -37.72097082866325, 
		145.0478238841943 -37.72097167730086, 
		145.04782817470811 -37.72052358842805, 
		145.0480758216422 -37.72052528577825
		)'))
		);
	
insert into cse3dms.ltu_buildings 
values (1002, 'Agora East','Building',
st_makepolygon(st_geomfromtext('LINESTRING(
		145.0489470110929 -37.720527831706356, 
		145.048951301443 -37.720963190794855, 
		145.04875370727473 -37.720963727188916, 
		145.04875370727473 -37.72052899095957, 
		145.0489470110929 -37.720527831706356
		)'))
	);
	
	
select st_makepolygon(st_geomfromtext('LINESTRING(
		145.0489470110929 -37.720527831706356, 
		145.048951301443 -37.720963190794855, 
		145.04875370727473 -37.720963727188916, 
		145.04875370727473 -37.72052899095957, 
		145.0489470110929 -37.720527831706356
		)'))	;
		
select * 
from cse3dms.ltu_buildings
where object_type='Building';


-- PATH
select st_geomfromtext('linestring(
145.0472854343536 -37.72052358842805, 
145.04780457465796 -37.72052019385703, 
145.04809953373802 -37.72051795488079, 
145.04873988522672 -37.72051340458501, 
145.0489619072088 -37.72051455848027, 
145.04954540382903 -37.72050776574361 
)')

select st_geomfromtext('linestring(
145.04780457465796 -37.72052019385703, 
145.0478088650081 -37.72098865024522, 
145.04804268430001 -37.720981861080894, 
145.0481006132364 -37.7209852556955, 
145.0487355947129 -37.72097846646612, 
145.04897370435495 -37.72097761782859, 
145.0489619072088 -37.72051455848027 
)')

select st_geomfromtext('linestring(
145.0481006132364 -37.7209852556955, 
145.04809953373802 -37.72051795488079, 
145.0481006132364 -37.7203029376211, 
145.0481091941003 -37.719932921744935 
)')

select st_geomfromtext('linestring(
145.0487355947129 -37.72097846646612, 
145.04873988522672 -37.72051340458501,
145.04873567862444 -37.72035153172092, 
145.04873567862444 -37.71992698111725 
)')
---

insert into cse3dms.ltu_paths 
values (2001,null,'Footpath',
	st_geomfromtext('linestring(
	145.0472854343536 -37.72052358842805, 
	145.04780457465796 -37.72052019385703, 
	145.04809953373802 -37.72051795488079, 
	145.04873988522672 -37.72051340458501, 
	145.0489619072088 -37.72051455848027, 
	145.04954540382903 -37.72050776574361 
	)')
	);

insert into cse3dms.ltu_paths 
values (2002,null,'Footpath',
	st_geomfromtext('linestring(
	145.04780457465796 -37.72052019385703, 
	145.0478088650081 -37.72098865024522, 
	145.04804268430001 -37.720981861080894, 
	145.0481006132364 -37.7209852556955, 
	145.0487355947129 -37.72097846646612, 
	145.04897370435495 -37.72097761782859, 
	145.0489619072088 -37.72051455848027 
	)')
	);

insert into cse3dms.ltu_paths 
values (2003,null,'Footpath',
	st_geomfromtext('linestring(
	145.0481006132364 -37.7209852556955, 
	145.04809953373802 -37.72051795488079, 
	145.0481006132364 -37.7203029376211, 
	145.0481091941003 -37.719932921744935 
	)')
	);

insert into cse3dms.ltu_paths 
values (2004,null,'Footpath',
	st_geomfromtext('linestring(
	145.0487355947129 -37.72097846646612, 
	145.04873988522672 -37.72051340458501,
	145.04873567862444 -37.72035153172092, 
	145.04873567862444 -37.71992698111725 
	)')
);

select * 
from cse3dms.ltu_paths;

--
insert into cse3dms.ltu_cafes 
values(3001,'Graffali''s Cafe','Cafe',
	st_point(145.04804054751614, -37.72075330215177));

insert into cse3dms.ltu_cafes 
values(3002,'Caffeine','Cafe',
	st_point(145.04849737878285, -37.72100901792871)); 

insert into cse3dms.ltu_cafes 
values(3003,'Bachelor of Coffee','Cafe',
	st_point(145.04860154020318, -37.7210022287015));
	
select * 
from cse3dms.ltu_cafes lc ;

select * from cse3dms.ltu_buildings lb 
union
select * from cse3dms.ltu_paths lb
union
select * from cse3dms.ltu_cafes lb;


















