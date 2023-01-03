-- the following script needs to be run in the terminal

-- go into the container shell
C:\<folder>> docker exec -it postgis-db-1 bash
   
-- restore the country shape file to the database
$ ogr2ogr PG:"dbname=gisdb user=postgres" "/home/shp/world-administrative-boundaries/world-administrative-boundaries.shp" -nln cse3dms.countries -overwrite -nlt MULTIPOLYGON

alter table cse3dms.countries 
rename column iso_3166_1_ to country_code;

-- restore the IATA locations
-- thei ariport.csv does not have geometry column.
-- use copy script from psql
-- open psql from container

-- restore the IATA connection

-- restore the QF flight routes --> this will be for the assignment

-- end of terminal script
C:\<folder>\ docker exec -it postgis-db-1 psql -U postgres gisdb

-- create an external table

-- create the extension for external source access
create extension file_fdw;

-- create foreign data wrapper server
create server my_csv foreign data wrapper file_fdw;

-- create the forign table structure
create foreign table cse3dms.ext_airport
(
  airport_id int,
  airport_type text,
  airport_name text,
  latitude float,
  longitude float,
  elevation float,
  continent text,
  country_code text,
  region text,
  city text,
  iata_code text 
) server my_csv
options (filename '/home/airport/airports.csv', format 'csv', header 'true');

select * from cse3dms.ext_airport;
select count(*)
from cse3dms.ext_airport;

-- create the airport table
create table cse3dms.airports as
select 	ea.airport_id ,
		ea.iata_code, 
		ea.airport_type ,
		ea.airport_name ,
		st_setsrid(st_point(ea.longitude,ea.latitude),4326) geom,
		ea.elevation ,
		ea.continent ,
		ea.country_code ,
		ea.region ,
		ea.city 
from cse3dms.ext_airport ea ;

-- verify the process using the following script
select *
from cse3dms.airports;

-- restore the flight links
-- create the external table for the flight link
create foreign table cse3dms.ext_flights 
(origin text,
 dest   text) server my_csv
 options (filename '/home/airport/flight_route.csv', format 'csv', header 'true');

select count(*) from cse3dms.ext_flights;
 
-- get the geometry coordinate from both airports
select ef.origin, ao.geom or_geom, ef.dest, ad.geom dest_geom
from cse3dms.ext_flights ef
join cse3dms.airports ao 
on (ao.iata_code = ef.origin)
join cse3dms.airports ad 
on (ad.iata_code = ef.dest);

--create the links between two airports
create table cse3dms.flights as
select ef.origin, ef.dest, st_makeline(ao.geom , ad.geom ) geom
from cse3dms.ext_flights ef
join cse3dms.airports ao 
on (ao.iata_code = ef.origin)
join cse3dms.airports ad 
on (ad.iata_code = ef.dest);

select * from cse3dms.flights;

-- this is SQL part
-- find airport without flights
select iata_code, airport_name, country_code 
from cse3dms.airports 
where iata_code not in (select origin from cse3dms.flights)
and iata_code not in (select dest from cse3dms.flights);

-- show airports in Australia
select iata_code , airport_name, geom
from cse3dms.airports a 
where country_code = (select country_code from cse3dms.countries c where c."name" = 'Australia');

-- find the longet flight from Australia
with au_airports as
(select iata_code 
from cse3dms.airports a 
where country_code = (select country_code from cse3dms.countries c where c."name" = 'Australia'))
select max(st_length(geom::geography)/1000) dist_km
from cse3dms.flights 
where origin in (select iata_code from au_airports);


with au_airports as
(select iata_code 
from cse3dms.airports a 
where country_code = (select country_code from cse3dms.countries c where c."name" = 'Australia'))
select ao.iata_code , ao.airport_name ||'-'|| ao.country_code origin,
	   ad.iata_code , ad.airport_name ||'-'|| ad.country_code destination,
	   st_length(f.geom::geography)/1000 dist_km, f.geom
from cse3dms.flights f
join cse3dms.airports ao 
on (f.origin=ao.iata_code)
join cse3dms.airports ad
on (f.dest = ad.iata_code)
where origin in (select iata_code from au_airports)
order by dist_km desc
limit 1;

-- Find the countries where the flight from MEL – CTU flies through.
select geom
from cse3dms.flights f 
where origin='MEL'
and dest ='CTU';

select c."name", c.wkb_geometry  
from cse3dms.countries c,
	(select geom
	from cse3dms.flights f 
	where origin='MEL'
	and dest ='CTU') mc
where st_intersects(c.wkb_geometry, mc.geom)=true;

-- identify all airports that are not located in the mainland

select a.iata_code , a.airport_name, a.geom 
from cse3dms.airports a,
     (select c.wkb_geometry geom from cse3dms.countries c
      where c."name"='Australia') au
where a.country_code ='AU'
and st_contains(au.geom, a.geom)=false;
union
select 'AU','AU',c.wkb_geometry geom from cse3dms.countries c
      where c."name"='Australia';

select region, st_union(wkb_geometry) geom
from cse3dms.countries c 
group by region;

-- identify the airport density, relative to the country size
with country_airports as
(select a.country_code, count(*) num
 from airports a
 group by a.country_code)
 select c.name, c.country_code , st_area(wkb_geometry::geography)/1000000 sqkm, 
        ca.num, round(st_area(wkb_geometry::geography)::numeric/1000000/ca.num,2) airport_coverage
from cse3dms.countries c 
join country_airports ca
on (c.country_code = ca.country_code)
order by 1;


select st_geomfromtext('LINESTRING (151.177002 -33.94609833, 213.03699904570953 9.379702711674395, -97.038002 32.896801)')::geography