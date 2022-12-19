-- CREATE TABLE EV_registration(  
--    geoid varchar(10),  
--    zip integer,  
--    county varchar(100), 
--    registration_valid_date date,
--    vehicle_name varchar(50),
-- 	CONSTRAINT fk_Employee  
-- FOREIGN KEY(Employee_id)   
-- REFERENCES Employee(Employee_id)  
-- );  

-- create table County(
-- 	county varchar(100),
-- 	longitude numeric,
-- 	latitude numeric,
-- 	geoid varchar(10),
-- 	zip integer
-- );

create table household_income (
county varchar(100),
income_yr_2019 NUMERIC,
income_yr_2020 numeric,
income_yr_2021 numeric);


create table EV_registration (
	county varchar(100),
	registration_date date,
	vehicle_name varchar(100));
)

create table alternative_fueling_station(
county varchar(100),
access_code varchar(10),
fuel_type_code varchar(10));

select * from household_income;
select * from EV_registration
select * from alternative_fueling_station;