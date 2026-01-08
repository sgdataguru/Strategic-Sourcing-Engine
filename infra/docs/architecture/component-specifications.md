# Component Specifications

## 1. Compute & Processing

### Azure Functions (Serverless)

- **Purpose**: Lightweight API fetchers, event triggers, and orchestration glue.
- **Rationale**: Cost-effective for on-demand "bursty" workloads (sourcing requests).
- **Configuration**: Python v3.11+, Consumption Plan (Linux).
- **Scalability**: Auto-scales based on HTTP trigger events.

## 2. Storage

### Azure Data Lake Storage Gen2 (ADLS)

- **Purpose**: Unified storage for Raw (JSON/PDF) and Staged data.
- **Rationale**: Hierarchical namespace support, cheaper than Blob Storage for big data analytics.
- **Configuration**:
  - Tier: Hot (for active sourcing projects).
  - Redundancy: LRS (Locally Redundant) for Dev, ZRS (Zone Redundant) for Prod.

### Azure SQL Database

- **Purpose**: Serving layer for structured data, user profiles, and active project state.
- **Rationale**: Strong consistency, familiar SQL interface for BI tools, seamless integration with Web Apps.
- **Configuration**: Serverless tier (auto-pause supported for Dev).

## 3. Intelligence

### Azure OpenAI Service

- **Purpose**: LLM reasoning engine (GPT-4o).
- **Rationale**: Enterprise-grade security (private VNet), SLA guarantees (unlike public OpenAI API).
- **Configuration**: Private Endpoint enabled. Content filtering set to "Medium".

### Azure AI Search

- **Purpose**: Vector database for RAG (Retrieval Augmented Generation).
- **Rationale**: Native integration with Azure OpenAI and blob storage indexers.
- **Configuration**: Basic Tier (sufficient for pilot volume).

## 4. Integration

### Azure Data Factory (ADF)

- **Purpose**: Orchestrating batch data movement from SAP/D365.
- **Rationale**: Native connectors for SAP ECO, visual monitoring.
