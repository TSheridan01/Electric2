--Queries for ML:

--Income vs EV count per county - income_all_yrs_ev_count.csv - linear_regression_income_ev_cnt.ipynb
SELECT A.STATECODE_OF_COUNTY,
	A.COUNTY,
	A.INCOME_YR_2021,
	A.INCOME_YR_2020,
	A.INCOME_YR_2019,
	B.EV_COUNT
FROM HOUSEHOLD_INCOME A,

	(SELECT STATECODE_OF_COUNTY,
			COUNTY,
			COUNT(VEHICLE_NAME) AS EV_COUNT
		FROM EV_REGISTRATION
		GROUP BY STATECODE_OF_COUNTY,
			COUNTY) B
WHERE A.STATECODE_OF_COUNTY = B.STATECODE_OF_COUNTY
	AND A.COUNTY = B.COUNTY;



--income vs EV count and stations count per county - counts_per_county.csv - linear_regression_ev_count_station_cnt.ipynb, unsupervised_K_income_ev_stations_cnt.ipynb(no PCA used)
SELECT A.STATECODE_OF_COUNTY,
	A.COUNTY,
	A.INCOME_YR_2021,
	A.INCOME_YR_2020,
	A.INCOME_YR_2019,
	B.VEHICLE_CNT,
	C.STATION_CNT
FROM HOUSEHOLD_INCOME A,

	(SELECT STATECODE_OF_COUNTY,
			COUNTY,
			COUNT(VEHICLE_NAME) VEHICLE_CNT
		FROM EV_REGISTRATION
		GROUP BY STATECODE_OF_COUNTY,
			COUNTY) B,

	(SELECT STATECODE_OF_COUNTY,
			COUNTY,
			COUNT(FUEL_TYPE_CODE) STATION_CNT
		FROM ALTERNATIVE_FUELING_STATION
		GROUP BY STATECODE_OF_COUNTY,
			COUNTY) C
WHERE A.STATECODE_OF_COUNTY = B.STATECODE_OF_COUNTY
	AND A.COUNTY = B.COUNTY
	AND B.STATECODE_OF_COUNTY = C.STATECODE_OF_COUNTY
	AND B.COUNTY = C.COUNTY
	order by vehicle_cnt desc;

--income vs stations count per county - income_all_yrs_station_cnt.csv -unsupervised_K_income_stations_cnt.ipynb, unsupervised_hierarchical_income_station_cnt.ipynb
SELECT A.INCOME_YR_2019, A.INCOME_YR_2020, A.INCOME_YR_2021,
	B.STATIONS_COUNT
FROM HOUSEHOLD_INCOME A,
	(SELECT STATECODE_OF_COUNTY,
			COUNTY,
			COUNT(FUEL_TYPE_CODE) AS STATIONS_COUNT
		FROM ALTERNATIVE_FUELING_STATION
		GROUP BY STATECODE_OF_COUNTY,
			COUNTY) B
WHERE A.STATECODE_OF_COUNTY = B.STATECODE_OF_COUNTY
	AND A.COUNTY = B.COUNTY;
	
-- select a.statecode_of_county, a.county, a.income_yr_2021, b.fuel_type_code, c.vehicle_name
-- from household_income a, alternative_fueling_station b, ev_registration c
-- where a.statecode_of_county = b.statecode_of_county
-- and a.county = b.county
-- and b.statecode_of_county = c.statecode_of_county
-- and b.county = c.county;