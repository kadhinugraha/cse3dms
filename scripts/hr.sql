--drop schema hr cascade;
CREATE SCHEMA hr;

-- Remove the comments to recreate the tables
-- DROP VIEW hr.emp_details_view;

-- DROP SEQUENCE hr.departments_seq;
-- DROP SEQUENCE hr.employees_seq;
-- DROP SEQUENCE hr.locations_seq;

-- DROP TABLE hr.regions     CASCADE ;
-- DROP TABLE hr.departments CASCADE ;
-- DROP TABLE hr.locations   CASCADE ;
-- DROP TABLE hr.jobs        CASCADE ;
-- DROP TABLE hr.job_history CASCADE ;
-- DROP TABLE hr.employees   CASCADE ;
-- DROP TABLE hr.countries   CASCADE ;  

-- Oracle HR to PostgreSQL
-- Modified for CSE3DMS
-- By k.adhinugraha@latrobe.edu.au
-- ********************************************************************
-- Create the REGIONS TABLE hr.to hold region information for locations
-- HR.LOCATIONS TABLE hr.has a foreign key to this table.


-- ******  Creating REGIONS TABLE hr.....

CREATE TABLE hr.regions
    ( region_id      numeric CONSTRAINT  region_id_nn NOT NULL 
    , region_name    VARCHAR(25) 
    );


ALTER TABLE hr.regions
ADD CONSTRAINT reg_id_pk
       		 PRIMARY KEY (region_id)  ;

-- ********************************************************************
-- Create the COUNTRIES TABLE hr.to hold country information for customers
-- and company locations. 
-- OE.CUSTOMERS TABLE hr.and HR.LOCATIONS have a foreign key to this table.

-- ******  Creating COUNTRIES TABLE hr.....

CREATE TABLE hr.countries 
    ( country_id      CHAR(2) CONSTRAINT  country_id_nn NOT NULL 
    , country_name    VARCHAR(40) 
    , region_id       numeric  
    , CONSTRAINT     country_c_id_pk 
        	     PRIMARY KEY (country_id) 
    ); 

ALTER TABLE hr.countries
ADD  CONSTRAINT countr_reg_fk
        	 FOREIGN KEY (region_id)
          	  REFERENCES hr.regions(region_id) 
     ;

-- ********************************************************************
-- Create the LOCATIONS TABLE hr.to hold address information for company departments.
-- HR.DEPARTMENTS has a foreign key to this table.

-- ******  Creating LOCATIONS TABLE hr.....

CREATE TABLE hr.locations
    ( location_id    numeric(4)
    , street_address VARCHAR(40)
    , postal_code    VARCHAR(12)
    , city       VARCHAR(30)
	CONSTRAINT     loc_city_nn  NOT NULL
    , state_province VARCHAR(25)
    , country_id     CHAR(2)
    ) ;

ALTER TABLE hr.locations
ADD  CONSTRAINT loc_id_pk
       		 PRIMARY KEY (location_id),
ADD CONSTRAINT loc_c_id_fk
       		 FOREIGN KEY (country_id)
        	  REFERENCES hr.countries(country_id) 
     ;

-- 	Useful for any subsequent addition of rows to locations table
-- 	Starts with 3300

CREATE SEQUENCE hr.locations_seq
 START WITH     3300
 INCREMENT BY   100
 MAXVALUE       9900
 ;

-- ********************************************************************
-- Create the DEPARTMENTS TABLE hr.to hold company department information.
-- HR.EMPLOYEES and HR.JOB_HISTORY have a foreign key to this table.

-- ******  Creating DEPARTMENTS TABLE hr.....

CREATE TABLE hr.departments
    ( department_id    numeric(40)
    , department_name  VARCHAR(30)
	CONSTRAINT  dept_name_nn  NOT NULL
    , manager_id       numeric(6)
    , location_id      numeric(4)
    ) ;


ALTER TABLE hr.departments
ADD  CONSTRAINT dept_id_pk
       		 PRIMARY KEY (department_id),
add CONSTRAINT dept_loc_fk
       		 FOREIGN KEY (location_id)
        	  REFERENCES hr.locations (location_id)
      ;

-- 	Useful for any subsequent addition of rows to departments table
-- 	Starts with 280 

CREATE SEQUENCE hr.departments_seq
 START WITH     280
 INCREMENT BY   10
 MAXVALUE       9990
;

-- ********************************************************************
-- Create the JOBS TABLE hr.to hold the different names of job roles within the company.
-- HR.EMPLOYEES has a foreign key to this table.

-- ******  Creating JOBS TABLE hr.....

CREATE TABLE hr.jobs
    ( job_id         VARCHAR(10)
    , job_title      VARCHAR(35)
	CONSTRAINT     job_title_nn  NOT NULL
    , min_salary     numeric(6)
    , max_salary     numeric(6)
    ) ;


ALTER TABLE hr.jobs
ADD  CONSTRAINT job_id_pk
      		 PRIMARY KEY(job_id)
     ;

-- ********************************************************************
-- Create the EMPLOYEES TABLE hr.to hold the employee personnel 
-- information for the company.
-- HR.EMPLOYEES has a self referencing foreign key to this table.

-- ******  Creating EMPLOYEES TABLE hr.....

CREATE TABLE hr.employees
    ( employee_id    numeric(6)
    , first_name     VARCHAR(20)
    , last_name      VARCHAR(25)
	 CONSTRAINT     emp_last_name_nn  NOT NULL
    , email          VARCHAR(25)
	CONSTRAINT     emp_email_nn  NOT NULL
    , phone_numeric   VARCHAR(20)
    , hire_date      DATE
	CONSTRAINT     emp_hire_date_nn  NOT NULL
    , job_id         VARCHAR(10)
	CONSTRAINT     emp_job_nn  NOT NULL
    , salary         numeric(8,2)
    , commission_pct numeric(2,2)
    , manager_id     numeric(6)
    , department_id  numeric(4)
    , CONSTRAINT     emp_salary_min
                     CHECK (salary > 0) 
    , CONSTRAINT     emp_email_uk
                     UNIQUE (email)
    ) ;

  
ALTER TABLE hr.employees
ADD  CONSTRAINT     emp_emp_id_pk
                     PRIMARY KEY (employee_id)
    ,add CONSTRAINT     emp_dept_fk
                     FOREIGN KEY (department_id)
                      REFERENCES hr.departments
    , add CONSTRAINT     emp_job_fk
                     FOREIGN KEY (job_id)
                      REFERENCES hr.jobs (job_id)
    , add CONSTRAINT     emp_manager_fk
                     FOREIGN KEY (manager_id)
                      REFERENCES hr.employees
     ;

ALTER TABLE hr.departments
ADD  CONSTRAINT dept_mgr_fk
      		 FOREIGN KEY (manager_id)
      		  REFERENCES hr.employees (employee_id) deferrable initially immediate
     ;


-- 	Useful for any subsequent addition of rows to employees table
-- 	Starts with 207 


CREATE SEQUENCE hr.employees_seq
 START WITH     207
 INCREMENT BY   1
;

-- ********************************************************************
-- Create the JOB_HISTORY TABLE hr.to hold the history of jobs that 
-- employees have held in the past.
-- HR.JOBS, HR_DEPARTMENTS, and HR.EMPLOYEES have a foreign key to this table.

-- ******  Creating JOB_HISTORY TABLE hr.....

CREATE TABLE hr.job_history
    ( employee_id   numeric(6)
	 CONSTRAINT    jhist_employee_nn  NOT NULL
    , start_date    DATE
	CONSTRAINT    jhist_start_date_nn  NOT NULL
    , end_date      DATE
	CONSTRAINT    jhist_end_date_nn  NOT NULL
    , job_id        varchar(10)
	CONSTRAINT    jhist_job_nn  NOT NULL
    , department_id numeric(4)
    , CONSTRAINT    jhist_date_interval
                    CHECK (end_date > start_date)
    ) ;


ALTER TABLE hr.job_history
ADD  CONSTRAINT jhist_emp_id_st_date_pk
      PRIMARY KEY (employee_id, start_date)
    ,add CONSTRAINT     jhist_job_fk
                     FOREIGN KEY (job_id)
                     REFERENCES hr.jobs
    ,add CONSTRAINT     jhist_emp_fk
                     FOREIGN KEY (employee_id)
                     REFERENCES hr.employees
    ,add CONSTRAINT     jhist_dept_fk
                     FOREIGN KEY (department_id)
                     REFERENCES hr.departments
     ;

-- ********************************************************************
-- Create the EMP_DETAILS_VIEW that joins the employees, jobs, 
-- departments, jobs, countries, and locations TABLE hr.to provide details
-- about employees.

-- ******  Creating EMP_DETAILS_VIEW view ...

CREATE OR REPLACE VIEW hr.emp_details_view
  (employee_id,
   job_id,
   manager_id,
   department_id,
   location_id,
   country_id,
   first_name,
   last_name,
   salary,
   commission_pct,
   department_name,
   job_title,
   city,
   state_province,
   country_name,
   region_name)
AS SELECT
  e.employee_id, 
  e.job_id, 
  e.manager_id, 
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  hr.employees e,
  hr.departments d,
  hr.jobs j,
  hr.locations l,
  hr.countries c,
  hr.regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id ;


