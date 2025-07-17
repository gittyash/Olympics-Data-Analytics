# Olympics Data Engineering Project

This repository contains an end-to-end data engineering project focused on the Olympic Games. It demonstrates a modern cloud-based ETL (Extract, Transform, Load) pipeline, leveraging a suite of powerful Azure services to process, analyze, and serve Olympic datasets.

The core of this project is to showcase a practical implementation of data ingestion, large-scale transformation, and analytics using industry-standard tools and practices.

---

## Project Architecture

The pipeline follows a logical flow, moving data from its raw state in storage to a refined, queryable format in a data warehouse.

**Data Flow:**
`Raw CSV Files` -> `Azure Data Factory` -> `Azure Data Lake Gen2` -> `Azure Databricks` -> `Azure Synapse Analytics` -> `BI Tools / Ad-hoc Analysis`

---

## Technologies Used

* **Orchestration:** **Azure Data Factory (ADF)** - Used to orchestrate the entire data movement and transformation pipeline.
* **Storage:** **Azure Data Lake Storage (ADLS) Gen2** - Serves as the central, scalable data lake for storing raw and transformed data.
* **Data Transformation:** **Azure Databricks** - The core processing engine where raw data is cleaned, joined, aggregated, and enriched using a PySpark notebook.
* **Data Warehousing & Analytics:** **Azure Synapse Analytics** - The final destination for the processed data, enabling fast and complex SQL queries for analysis.
* **Language/Frameworks:** **Python (PySpark)** & **SQL**.

---

## ETL Pipeline Workflow

1.  **Data Ingestion (Extract):**
    * The raw CSV files are uploaded to Azure Data Lake Storage.
    * An Azure Data Factory pipeline is triggered to begin the process.

2.  **Data Transformation (Transform):**
    * ADF calls an Azure Databricks notebook (`Tokyo Olympics Data Transformation Pyspark.ipynb`).
    * This notebook reads the raw data from the data lake and performs several transformations using PySpark.
    * The transformed, clean data is written back to a separate location in ADLS Gen2.

3.  **Data Loading (Load):**
    * A subsequent step in the ADF pipeline loads the transformed data from ADLS Gen2 into dedicated tables within an Azure Synapse Analytics SQL Pool.

4.  **Analysis & Queries:**
    * The `SQL queries Azure Synapse.sql` script contains various analytical queries that can be run against the data in Synapse to derive insights.

---

## Repository Structure

```
.
├── data/
│   ├── Athletes.csv
│   ├── Coaches.csv
│   ├── EntriesGender.csv
│   ├── Medals.csv
│   └── Teams.csv
├── Tokyo Olympics Data Transformation Pyspark.ipynb
└── SQL queries Azure Synapse.sql
```

* **`data/`**: Contains the raw, unprocessed source CSV files.
* **`Tokyo Olympics Data Transformation Pyspark.ipynb`**: The Jupyter Notebook with all the PySpark code for data transformation.
* **`SQL queries Azure Synapse.sql`**: A collection of SQL queries for analyzing the final data.

---

## Acknowledgements

A special thank you to **Darshil Parmar** on YouTube. This project was inspired by and built following his excellent and detailed tutorials on data engineering with Azure.

---

> This project is for educational and demonstration purposes.
