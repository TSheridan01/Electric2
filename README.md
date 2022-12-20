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

We will be using Postgres Database on AWS. 


An ERD diagram was created to show connections between **Electric Vehicle Registrations** to **County** to **EV Charging Stations**. 
See ERD below.



![image](https://github.com/TSheridan01/Electric2/blob/37382abf37ab2775edad720611367b26f2c89717/Resources/QuickDBD-export.png)



## Data Cleaning 

Our team found public data that contained registration data on a state by state basis over Electric Vehicles. We used Jupyter Notebook to clean the date 

We pulled EV Registration data from California, Florida, Michigan, New York, Texas and New Jersey and cleaned it down to the format of County - Registration Date - Make/Model, as shown below.

![image](https://github.com/TSheridan01/Electric2/blob/c7d4acf613f3db4d1138cc520b001e60e751e239/Images/Mi%20ScreenShot.png)



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






# Software

Jupyter Notebook
  Python
  
pgAdmin 4
  PostgreSQL

Quick Database Diagrams

Tableau




