# Electric
Group 4 



![image](https://github.com/TSheridan01/Electric2/blob/1122ea20914e10c1787b96e5cf800c9d38a6615b/Images/Bolt1.png)


## Overview 

# Charging Station Investment 

**How does household income impact EV vehicle sales? That should directly impact the investment on charging stations.
Using ML, we will see the trend between income, EV population and EV charging stations.
We will forecast the requirement of EV charging stations needed.**


#### Electric vehicles are the future!

Electric vehicles (EVs) offer an opportunity to replace fossil fuels in the transport sector. Electrification of the transport sector can also bring benefits in terms of increased energy efficiency and reduced local pollution.

Cars and trucks produce nearly one-fifth of America’s greenhouse-gas emissions, all of which must be eliminated to achieve the federal target of net-zero emissions by 2050. Although electric-vehicle (EV) sales in the United States have climbed by more than 40 percent each year, on average, since 2016, nearly half of US consumers say that battery or charging issues are their top concerns about buying EVs.


# EV Landscape 


By 2035, these major brands have pledged to go *ELECTIRC*.

- Bentley
- BMW
- Ford
- General Motors
- Honda
- Hyundia-Kia
- Jagular Land Rover
- Mazda
- Mercedes-Benz
- Mitsubishi
- Nissan
- Rolls-Royce
- Toyota
- Volkswagen
- Volvo



![image](https://github.com/TSheridan01/Electric2/blob/5ac605bee43303fa88732d96de8f2f40c228a218/Images/OEMMarketShare.png)



# Database

The data for our analysis is sourced from official agencies, such as the ‘Alternative Fuel Data Center’, ‘The U.S. Bureau of Economic Analysis’ & ‘The Atlas Data Hub’ as well as private sources that may have pertinent data. 

We will be using Postgres Database on AWS. Our team all has access to the database. 


An ERD diagram was created to show connections between **Electric Vehicle Registrations** to **County** to **EV Charging Stations**. 
See ERD below.



![image](https://github.com/TSheridan01/Electric2/blob/ca46e6ac2f124243c01026ec6c34847654872e11/Images/QuickDBD-export_v1.png)


#### Our Database is being housed in Postgres. Our Team all has access to this database. 

county
![image](https://github.com/TSheridan01/Electric2/blob/f3b4497ff255c043fb158ab8f157073f66b83a51/Images/county_static.PNG)

ev_registration
![image](https://github.com/TSheridan01/Electric2/blob/f3b4497ff255c043fb158ab8f157073f66b83a51/Images/ev_registration.PNG)

household_income
![image](https://github.com/TSheridan01/Electric2/blob/f3b4497ff255c043fb158ab8f157073f66b83a51/Images/income_table.PNG)

The fourth table we are working to load, 'Alternative_Fueling_Stations'


## Data Cleaning 

Our team found public data that contained registration data on a state by state basis over Electric Vehicles. We used Jupyter Notebook to clean the date 

We pulled EV Registration data from California, Florida, Michigan, New York, Texas and New Jersey and cleaned it down to the format of County - Registration Date - Make/Model, as shown below.

![image](https://github.com/TSheridan01/Electric2/blob/c7d4acf613f3db4d1138cc520b001e60e751e239/Images/Mi%20ScreenShot.png)

Our team also pulled Open Source data with Charging Station Location and cleaned it into a format that shows County - Access Code - Fuel Type



- [County Income Data](https://www.bea.gov/data/income-saving/personal-income-county-metro-and-other-areas)
- [State EV Registration](https://www.atlasevhub.com/materials/state-ev-registration-data/#data)
- [Charging Station Data](https://data-usdot.opendata.arcgis.com/datasets/alternative-fueling-stations/explore?location=2.113167%2C-44.582273%2C2.00&showTable=true)


### In Progress

Our team is working to separate extract from the column of County and State in the Count Data set. 
California registration data needs to be pushed to Table ev_registration 




# Machine Learning 


Datasets median income & registered number of EV vehicles in county

*Supervised Classification Model will answer how likely are you to buy an Electric Vehicle based on your income and location? Will you buy: Yes or No?*

Planning to have a precision and recall threshold of above 50% for model created. 

Inputs - EV's registered in county (zip code), household income by county (2020, 2021), # of charging stations in county, access_code,
fuel_type_code, registration_valid_date, vehicle_name

Outputs - 0 = "No, will not buy", 1 = "Yes will buy" 

Possibly create decision tree using info from tables (Balanced random forest/Easy AdaBoost Classifier) 

*Supervised Regression Model to forecast # of charging stations needed by county in the future.* 

Inputs - Count of EV registration in county, number of predicted buyers from suprevised classification model, ratio of users to each charging station? 

Outputs - graph showing predicted growth of EV cars along with number of charging stations. 

Table 1: Alternative_Fueling_Station:
longitude
latitude
county
access_code
fuel_type_code

Table 2: Household_Income:
GeoName, 2020, 2021

Table 3: EV_registration:
county, registration_valid_date, vehicle_name


## Presentation   


- [Slides](https://docs.google.com/presentation/d/1Kmcz95mzre-Fv05gxPSwaaPtrRXq5b-j/edit#slide=id.p1)


![image](https://github.com/TSheridan01/Electric2/blob/609ca33c5ad7eaf08c8295b29bb29bad4128f675/Images/Slides1.png)


![image](https://github.com/TSheridan01/Electric2/blob/609ca33c5ad7eaf08c8295b29bb29bad4128f675/Images/Slides2.png)



## Dashboard

Tableau is the Data Visualization Tool currently being used for our Project and will depict the following:

- Correlation between county income and the quantity of EV Registrations
- Average Income and Charging Station Locations 
- Using raw data to show current EV Charging locations 

Our tool will be used for OEMs to view income trends and project where new charging station will be installed.


The following image is from Tableau showing a map of Charging Stations currently located in the United States. 

![image](https://github.com/TSheridan01/Electric2/blob/4d3bbadc5b7e760e0176841ca6dad822771dee08/Images/CStations1.png)






# Software

Jupyter Notebook
  Python
  
pgAdmin 4
  PostgreSQL

Quick Database Diagrams

Tableau




