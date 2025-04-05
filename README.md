# Scope_of_Work_Transportation_Logistics
# Project Overview
This project implements an end-to-end data pipeline for transportation and logistics data using Azure Databricks, MySQL, Power BI, and ADF following the Medallion Architecture.

#  Architecture
- Bronze: Raw ingestion
- Silver: Cleaned & enriched data
- Gold: Aggregated KPIs for business insights

#  Repository Structure
- `data/`: Sample datasets
- `notebooks/`: PySpark notebooks for each layer
- `sql/`: SQL queries for MySQL processing
- `powerbi/`: Power BI dashboard file
- `adf/`: JSON templates of ADF pipelines
- `images/`: Diagrams and visuals

#  Tools & Tech
- Azure Databricks (PySpark)
- Azure Data Lake Storage
- MySQL
- Azure Data Factory
- Power BI

# How to Run
1. Upload raw data to ADLS
2. Run notebooks in sequence: Bronze → Silver → Gold
3. Execute SQL scripts in MySQL
4. Connect Power BI to gold table
5. Schedule pipelines in ADF

