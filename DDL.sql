-- Table: public.county

-- DROP TABLE IF EXISTS public.county;

CREATE TABLE IF NOT EXISTS public.county
(
    zip bigint,
    lat double precision,
    lng double precision,
    city text,
    state_id text,
    state_name text,
    county_fips bigint,
    county_name text
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.county
    OWNER to postgres_project;

-- Table: public.household_income

-- DROP TABLE IF EXISTS public.household_income;

CREATE TABLE IF NOT EXISTS public.household_income
(
    statecode_of_county text,
    county text,
    income_yr_2019 double precision,
    income_yr_2020 double precision,
    income_yr_2021 double precision
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.household_income
    OWNER to postgres_project;


-- Table: public.ev_registration

-- DROP TABLE IF EXISTS public.ev_registration;

CREATE TABLE IF NOT EXISTS public.ev_registration
(
    statecode_of_county text,
    county text,
    registration_date timestamp,
    vehicle_name text
)

TABLESPACE pg_default;

-- Table: public.alternative_fueling_station

-- DROP TABLE IF EXISTS public.alternative_fueling_station;

CREATE TABLE IF NOT EXISTS public.alternative_fueling_station
(
    statecode_of_county text,
    county text,
    access_code text,
    fuel_type_code text
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.alternative_fueling_station
    OWNER to postgres_project;
