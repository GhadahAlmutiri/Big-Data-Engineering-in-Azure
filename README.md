# Big-Data-Engineering-in-Azure
This project was done in a data engineering bootcamp at SDA &amp; WeCloudData
## Project Overview
This project involves ingesting data from 2 sources into Azure Data Lake, performing transformations, running a Machine Learning Model, and generating a report using Azure Synapse.
![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/bf6ad420-456a-4811-9525-21d115afc7e3)

## Objectives
- Ingest data from StackOverflow into Azure Data Lake.
- Create an ETL pipeline using Azure Data Factory for data processing.
- Implement a Machine Learning model using Azure Databricks to classify post topics.
- Generate a report in Azure Synapse displaying the top 10 topics of the day.

## About Data
### Data Background
The dataset is from StackOverflow, recording daily online posts, post types, and user information.

### Dataset Schema
- **RDS**: Users and PostTypes tables stored on the RDS PostgreSQL database, updated weekly following SCD type 1.
- **Azure Storage Blob**: Daily Posts data files in Parquet format.
![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/2fc913dc-437e-4f4b-b7ce-8cccbdec4222)

## Business Requirements
### Data Lake Requirements
- Create a Data Lake with a hierarchical namespace.
- Use Azure Data Factory for data ingestion and processing.
- Ingest PostTypes and Users tables from RDS weekly.
- Ingest Posts data from Azure Storage Blob daily.

### Machine Learning Process Requirements
- Create a Databricks notebook to process data and feed it into a Machine Learning Model.
- Output the result from the Machine Learning Model.

### Chart Requirements
- Create a chart on Synapse displaying the top 10 topics of the day.

## Project Infrastructure
- **Azure**: All infrastructure is built on Azure.
- **Azure Data Lake**: Store ingested files, ML data, and output data.
- **Azure Data Factory (ADF)**: Finish the entire pipeline.
- **Azure Synapse**: Platform for data analysis.
 *daily pipeline*
![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/d895f61c-2ce0-4db3-8261-11682965c11c)
![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/4e7339a4-a8a6-4b94-9e8d-a1c796d39470)
*Weekly pipeline*
![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/d8112160-19ca-481e-afeb-935c808725da)


## Utilized Azure Resources
- **Azure Data Factory**: Used to create and orchestrate an ETL pipeline, extracting data from the sources, transforming it, and loading it into a data lake.
- **Azure Logic Apps**: Automated an alert if any failures in the ADF pipelines occurred.
- **Azure Key Vault**: Stored secrets (passwords & access tokens) safely and effectively.
- **Azure Data Lake Gen2**: Stored raw data initially (landing zone), then stored the transformed data for analysis.
- **Azure Databricks**: Processed the data using Spark's distributed computing power. Spark ML was also used to train and deploy a classifier.
- **Azure Synapse Analytics**: Used for data analysis, querying data from the data lake, and creating simple charts.

## Part One: Data Ingestion
- Use ADF to connect to the Postgres database and Azure blob container.
- Transfer Users and PostTypes tables to the data lake.
- Connect to Azure blob container to ingest Posts data.

## Part Two: Data Transformation
- Create a Databricks notebook for data transformation and ML running.
- Use the ADF pipeline for transformation.

## Part Three: Data Visualization
- Use Synapse to connect to the data lake.
- Generate a chart displaying the top 10 topics in the posts.
 ![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/6e5f6b33-cfe2-4cda-84cb-15928f16707f)

- Generate a chart displaying the Most & least frequently used tags
  ![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/a4b408a3-60d0-4c02-b5ad-41259400325f)

  ![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/47c68160-8700-40c7-a5b8-cf8f1bae1351)

- Generate a chart displaying theTags occurrence breakdown
 ![image](https://github.com/GhadahAlmutiri/Big-Data-Engineering-in-Azure/assets/74125257/0535aebe-027c-429d-afd2-f68fd86e1eec)


