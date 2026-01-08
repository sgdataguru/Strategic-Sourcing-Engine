# Feature: Batch Ingestion

## Description

Ingest data from SAP and D365 on a scheduled basis (Daily/Hourly).

## Requirements

- Support full and incremental loads.
- Validate schema on ingestion.
- Store raw data in JSON/Parquet format.

## Implementation

- **Source**: SAP/D365 APIs.
- **Tool**: Python scripts running in Azure Functions or ADF.
