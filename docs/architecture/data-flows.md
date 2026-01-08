# Data Flows: ingestion, Processing, and Serving

## 1. Batch Ingestion Flow (Master Data)

Used for creating the base "World View" of internal item codes and supplier lists.

1. **Trigger**: Scheduled (Daily @ 01:00 UTC).
2. **Source**: SAP (Singapore) & D365 (Global) Exports/APIs.
3. **Process**:
    - **Extract**: ADF copies data to `Raw/Landing` container (JSON/Parquet).
    - **Validate**: Schema validation checks (mandatory fields present).
    - **Load**: Valid records moved to `Curated/MasterData` tables.
    - **Archive**: Original files moved to `Raw/Archive` for immutability.

## 2. On-Demand Analysis Flow (Live Sourcing)

Used when a Buyer initiates a request.

1. **Trigger**: User submits "Analyze X Widget" request via Web Portal.
2. **Fetch**: Azure Functions call external Market APIs (e.g., Bloomberg, Indices) for real-time rates.
3. **Store**: API responses saved to `Raw/External` (Audit trail).
4. **Vectorize**: Relevant text/PDFs are chunked and indexed in **Azure AI Search**.
5. **Reason**: Azure OpenAI queries the Vector Store + Curated Data to generate recommendations.
6. **Serve**: Results presented in Portal with "Approve/Reject" options.

## 3. Storage Strategy

- **Hot Tier**: Current active sourcing projects and latest market rates. (Azure SQL / High-Performance ADLS).
- **Cool Tier**: Completed projects > 90 days. Raw ingestion logs.
- **Archive Tier**: Compliance archives > 7 years.

## 4. Serving & Consumption

- **API First**: The React Frontend consumes data *only* via the Backend API (Python/FastAPI). No direct DB access.
- **Role-Based Views**:
  - *Buyer*: Sees only their assigned categories.
  - *Manager*: Sees team performance and approval queues.
