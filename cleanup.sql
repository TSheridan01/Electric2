
select * from household_income;
-- step 1 - count/delete where county do not have ','
delete from household_income where county not like '%,%';-- 59 deleted
select * from household_income where county like '%,%';
delete from household_income where county like '%+%';--24 deleted
select * from household_income where county like '%+%';

-- step 2 - update the columns
update household_income set statecode_of_county= substring(county,position(',' in county)+1,3), county=substring(county,1,position(',' in county)-1);
UPDATE HOUSEHOLD_INCOME
SET STATECODE_OF_COUNTY = TRIM(STATECODE_OF_COUNTY);

-- count
select count(*) from household_income;--3091

select ev.county, count(*) from ev_registration ev where ev.statecode_of_county = 'CA' group by ev.county;

update ev_registration set county = concat('0',county) where statecode_of_county = 'CA' and county in ('6001',
'6003',
'6005',
'6007',
'6009',
'6011',
'6013',
'6015',
'6017',
'6019',
'6021',
'6023',
'6025',
'6027',
'6029',
'6031',
'6033',
'6035',
'6037',
'6039',
'6041',
'6043',
'6045',
'6047',
'6049',
'6051',
'6053',
'6055',
'6057',
'6059',
'6061',
'6063',
'6065',
'6067',
'6069',
'6071',
'6073',
'6075',
'6077',
'6079',
'6081',
'6083',
'6085',
'6087',
'6089',
'6091',
'6093',
'6095',
'6097',
'6099',
'6101',
'6103',
'6105',
'6107',
'6109',
'6111',
'6113','6115');

update ev_registration ev set county = ct.county_name
from (select distinct county_fips, state_id, county_name from county where state_id ='CA') ct
where ev.county = ct.county_fips and ev.statecode_of_county = 'CA';
--UPDATE 2522939

select county, count(*) from ev_registration where statecode_of_county ='TX' group by county;
select statecode_of_county, count(*) from ev_registration group by statecode_of_county;
"CA"	2522939
"FL"	345164
"MI"	42864
"NJ"	304979
"NY"	1037440
"TX"	1042884
delete from ev_registration where county ='Zip Code not in Source Sheet' ;
delete from ev_registration where county ='' ;
delete from ev_registration where county is null ;
select count(*) from ev_registration where vehicle_name is null;--0

DELETE
FROM ALTERNATIVE_FUELING_STATION
WHERE FUEL_TYPE_CODE not in ('HY','ELEC');

DELETE
FROM ALTERNATIVE_FUELING_STATION
WHERE ACCESS_CODE in ('private');

