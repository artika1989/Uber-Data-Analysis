# Uber Data Analytics | Modern Data Engineering GCP Project

## Introduction

The goal of this project is to perform data analytics on Uber data using various tools and technologies, including GCP Storage, Python, Compute Instance, Mage Data Pipeline Tool, BigQuery, and Looker Studio.

## Architecture 
<img src="architecture.jpg">

## Technology Used
- Programming Language - Python

Google Cloud Platform
1. Google Storage
2. Compute Instance 
3. BigQuery
4. Looker Studio

Modern Data Pipeine Tool - https://www.mage.ai/

Contibute to this open source project - https://github.com/mage-ai/mage-ai


## Dataset Used
TLC Trip Record Data
Yellow and green taxi trip records include fields capturing pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts. 


More info about dataset can be found here:
1. Website - https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
2. Data Dictionary - https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf

## Data Model
<img src="data_model.jpeg">

## Data Loading
Data uploaded to cloud storage, using request api to extract data from cloud storge.

## Data Transform
The primary purpose of this code is to transform raw ride-sharing data into a structured format that can be used for reporting and analysis in a data warehouse. By creating separate dimension tables (like datetime, passenger count, trip distance, etc.) and a fact table that integrates these dimensions, the code sets up a data model that can efficiently support querying and analysis, typical in business intelligence (BI) scenarios.

## Data Loading
Once data has been transformed from raw data to pandas dataframe, it has been exported to google cloud big query.

## Query Data
Analysing data such as total fare amount by vendor id, avg tip amount and payment type name. 

## Create Table
creating table from fact and dimension table determined while uploading data in bigquery(analytics_query_bq.sql).

## looker studio
Utilizing looker studion to get insights of uber data for analysis such as filtering data based on vendor id, payment type name. Generating a map defining the pickup and dropoff longitude and latitude. Adding chart representing total amount based on rate code and total amount based on payment type.
