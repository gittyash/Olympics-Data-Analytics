🏅 Olympics Data Engineering Project 🏅
🚀 Overview
This repository contains an end-to-end data engineering project focused on the Olympic Games. It demonstrates a modern cloud-based ETL (Extract, Transform, Load) pipeline, leveraging a suite of powerful Azure services to process, analyze, and serve Olympic datasets.

The core of this project is to showcase a practical implementation of data ingestion, large-scale transformation, and analytics using industry-standard tools and practices.

🏛️ Project Architecture
The pipeline follows a logical flow, moving data from its raw state in storage to a refined, queryable format in a data warehouse.

graph TD;
    A[Raw CSV Files] -->|Ingest| B(Azure Data Factory);
    B -->|Orchestrates Transfer| C{Azure Data Lake Gen2};
    C -->|Load Data| D(Azure Databricks);
    D -->|Transform & Clean (PySpark)| C;
    C -->|Load Transformed Data| E[Azure Synapse Analytics];
    E -->|Analyze & Query (SQL)| F(BI Tools / Ad-hoc Analysis);

🛠️ Technologies Used
Orchestration: Azure Data Factory (ADF) - Used to orchestrate the entire data movement and transformation pipeline.

Storage: Azure Data Lake Storage (ADLS) Gen2 - Serves as the central, scalable data lake for storing raw and transformed data.

Data Transformation: Azure Databricks - The core processing engine where raw data is cleaned, joined, aggregated, and enriched using a PySpark notebook.

Data Warehousing & Analytics: Azure Synapse Analytics - The final destination for the processed data, enabling fast and complex SQL queries for analysis.

Language/Frameworks: Python (PySpark) & SQL.

⚙️ ETL Pipeline Workflow
Data Ingestion (Extract):

The five raw CSV files (Athletes.csv, Coaches.csv, etc.) are uploaded to Azure Data Lake Storage.

An Azure Data Factory pipeline is triggered to begin the process.

Data Transformation (Transform):

ADF calls an Azure Databricks notebook (Tokyo Olympics Data Transformation Pyspark.ipynb).

This notebook reads the raw data from the data lake.

Using PySpark, it performs several transformations, such as:

Cleaning data (handling nulls, correcting data types).

Joining different datasets (e.g., combining athlete and team information).

Creating new calculated columns (e.g., calculating medal-to-athlete ratios).

Aggregating data to create summary tables.

The transformed, clean data is written back to a separate location in ADLS Gen2, ready for loading.

Data Loading (Load):

A subsequent step in the ADF pipeline loads the transformed data from ADLS Gen2 into dedicated tables within an Azure Synapse Analytics SQL Pool.

This makes the data available for high-performance querying.

Analysis & Queries:

The SQL queries Azure Synapse.sql script contains various analytical queries that can be run against the data in Synapse to derive insights about medal counts, athlete distribution, gender participation, and more.

📁 Repository Structure
.
├── 📂 data/
│   ├── Athletes.csv
│   ├── Coaches.csv
│   ├── EntriesGender.csv
│   ├── Medals.csv
│   └── Teams.csv
├── 📜 Tokyo Olympics Data Transformation Pyspark.ipynb
└── 📜 SQL queries Azure Synapse.sql

data/: Contains the raw, unprocessed source CSV files for the project.

Tokyo Olympics Data Transformation Pyspark.ipynb: The Jupyter Notebook with all the PySpark code used for data cleaning and transformation in Azure Databricks.

SQL queries Azure Synapse.sql: A collection of SQL queries designed to be run in Azure Synapse Analytics to analyze the final, processed data.

✨ Acknowledgements
A special thank you to Darshil Parmar on YouTube. This project was inspired by and built following his excellent and detailed tutorials on data engineering with Azure. His content was invaluable in understanding the concepts and implementing the pipeline.

This project is for educational and demonstration purposes.
