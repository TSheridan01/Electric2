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

#### Our Current Status: We have begun cleaning our presentation slides. We are currently working on finazling best practice for Machine Learning and creating our Tableau Dashboard in order to visual our results. We are also working on adding more data to our Deep Learning.


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

- county
 
![image](https://github.com/TSheridan01/Electric2/blob/f3b4497ff255c043fb158ab8f157073f66b83a51/Images/county_static.PNG)

- ev_registration
 
![image](https://github.com/TSheridan01/Electric2/blob/f3b4497ff255c043fb158ab8f157073f66b83a51/Images/ev_registration.PNG)

- household_income

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


# Machine Learning 
## Models Used:
Linear Regression 
Unsupervised - K means 
Unsupervised - Hierarchical 
Deep learning

## Description of data preprocessing:
- We gathered data from state DMVs for currently registered EVs for states CA, FL, MI, NY, TX, and NJ
- We also downloaded US county data and household income data 
- We downloaded althernative fueling stations data from transportation site
- Used pandas jupyter notebook to clean and insert in AWS postgres DB

## Description of feature engineering and the feature selection, including their decisionmaking process: 
	- Total personal household income of county in years 2019, 2020 & 2021 so as to see the impact on charging stations and EV adoptions
	- Counts of EVs currently registered per county to see the impact on charging stations
	- Current counts of alternative fueling stations per county

## Description of how data was split into training and testing sets
For linear, K means and hierarchical, data is not divided into training and testing. Best features were picked using PCA in unsupervised
For Deep learning modle the data was broken up by a random state of 78 into training and testing data. 


## Explanation of model choice, including limitations and benefits 
Liner regression as we wanted to see the impact of income on EV adoption, and then the impact of income and EVs adoptions impact on charging stations count
Unsupervised models were used to see the clusters of income , EV adoptions and gfueling stations count
Deep learning was used to find the relation with unsummarized data 
Neural networks are prone to overfitting and can be more difficult to train than a straightforward logistic regression model
Deep learning also required lot of rows to train

## Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables) 
We started out with linear, and wanted to see clusters with the unspervised, and needed to see relationships using unsummarized data with deep learning model

## Description of how they have trained the model thus far, and any additional training that will take place 
In Linear, total household income column was reshaped and then fit into the model along with EVs count
In Unsupervised, elbow curve determined best number of clusters, PCA was used to choose dominating features and the resulting dataframe was used to fit the model and predict. For Deep Learning data was encoded to create all numerical values and scaled to size. Once input into the model "relu" and "sigmoid" activation functions were used in neural network to enable data to learn and a binary cross entrpy loss calculation was used. 

## Description of current accuracy score 
Accuracy score of model was predicting if a county had a charging station was 99%. 

![This is an image](https://github.com/TSheridan01/Electric2/blob/193cf272e520ce5f47ebd5429a7a5406bc5fabf6/ML%20EV%20Accuracy.PNG)



# Presentation   

We used google slides for presentation
- [Slides](https://docs.google.com/presentation/d/1Kmcz95mzre-Fv05gxPSwaaPtrRXq5b-j/edit#slide=id.p1)


# Dashboard

Tableau is the Data Visualization Tool currently being used for our Project and will depict the following:

- [Dashboard](https://public.tableau.com/app/profile/thomas.sheridan/viz/Electirc/Dashboard1)


- Correlation between county income and the quantity of EV Registrations
- Average Income and Charging Station Locations 
- Using raw data to show current EV Charging locations 

Our tool will be used for OEMs to view income trends and project where new charging station will be installed.

The tableau story link is [here](https://public.tableau.com/app/profile/megha.jain5255/viz/ElectricChargingStations/Needchargingstations)
We started with the following but we will be connecting our different tables by county to suggest the EV registrations and charging stations trend based on household income.

The following image is from Tableau showing a map of Charging Stations currently located in the United States. This data was taken from the source file. We are planning to use the Alternative Fueling Table to depict this graphic. We will present our findings to Car Manufacturers as well as those looking to invest in Electric Charging Stations. 

![image](https://github.com/TSheridan01/Electric2/blob/4d3bbadc5b7e760e0176841ca6dad822771dee08/Images/CStations1.png)






# Software

Jupyter Notebook
  Python
  
pgAdmin 4
  PostgreSQL

Quick Database Diagrams

Tableau

Our Python Installs Include:

- import pandas as pd
- import matplotlib as plt
- import sklearn as skl
- import tensorflow as tf
- from sklearn.model_selection import train_test_split
- from sklearn.preprocessing import StandardScaler,OneHotEncoder
- import psycopg2
- from sqlalchemy import create_engine



