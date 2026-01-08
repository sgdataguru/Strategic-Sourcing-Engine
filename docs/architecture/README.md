# System Architecture

## Overview

The SATS Data Platform is built on Azure, utilizing Data Lake Gen2 for storage and a combination of Batch and Streaming pipelines for data ingestion.

## High-Level Design

```mermaid
graph TD
    Sources[External Sources] -->|API/SFTP| BatchIngest[Batch Ingestion]
    Sources -->|Events| StreamIngest[Streaming Ingestion/Event Hubs]
    
    BatchIngest --> DL[Azure Data Lake Gen2]
    StreamIngest --> DL
    
    DL --> Proc[Processing Layer (Python/Spark)]
    Proc --> Serving[Serving Layer (Synapse/SQL)]
    
    User[User/BI Tools] --> Serving
```

## Components

- **Ingestion**: Azure Data Factory (Batch), Event Hubs (Streaming)
- **Storage**: ADLS Gen2
- **Processing**: Azure Functions / Databricks
