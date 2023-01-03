-- Add geolocation for the employees
alter table hr.employees 
add geom geometry;

update hr.employees 
set geom=st_point(1.3,0.75)
where employee_id=113;

update hr.employees 
set geom=st_point(0.5,0.5)
where employee_id=135;

update hr.employees 
set geom=st_point(0.45,0.15)
where employee_id=148;

update hr.employees 
set geom=st_point(1.7,1.05)
where employee_id=201;

update hr.employees 
set geom=st_point(1.1,0.6)
where employee_id=205;

update hr.employees 
set geom=st_point(0.55,0.85)
where employee_id=109;

update hr.employees 
set geom=st_point(0.15,1.05)
where employee_id=145;

update hr.employees 
set geom=st_point(0.25,0.65)
where employee_id=146;

update hr.employees 
set geom=st_point(0.75,0.65)
where employee_id=125;

update hr.employees 
set geom=st_point(0.75,0.55)
where employee_id=126;

update hr.employees 
set geom=st_point(1.1,0.65)
where employee_id=127;

update hr.employees 
set geom=st_point(1.5,0.15)
where employee_id=128;

update hr.employees 
set geom=st_point(1.9,0.7)
where employee_id=129;

update hr.employees 
set geom=st_point(0.55,0.65)
where employee_id=124;

update hr.employees 
set geom=st_point(0.65,0.45)
where employee_id=115;

update hr.employees 
set geom=st_point(0.45,0.75)
where employee_id=116;

update hr.employees 
set geom=st_point(0.85,.65)
where employee_id=114;

update hr.employees 
set geom=st_point(1,1.1)
where employee_id=100;

update hr.employees 
set geom=st_point(0.4,0.25)
where employee_id=101;

update hr.employees 
set geom=st_point(0.85,1.05)
where employee_id=102;

update hr.employees 
set geom=st_point(0.75,1.15)
where employee_id=108;

update hr.employees 
set geom=st_point(0.75,1.05)
where employee_id=206;

update hr.employees 
set geom=st_point(0.95,0.7)
where employee_id=107;

update hr.employees 
set geom=st_point(1.3,0.8)
where employee_id=103;

update hr.employees 
set geom=st_point(1.6,0.65)
where employee_id=104;

update hr.employees 
set geom=st_point(0.7,0.15)
where employee_id=105;

update hr.employees 
set geom=st_point(1.9,1.05)
where employee_id=106;
