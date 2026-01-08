# Security & Governance: SATS Data Platform

## 1. Authentication & Authorization

- **Identity Provider**: **Azure Active Directory (Entra ID)** is the single source of truth.
- **Service Principals**: Used for machine-to-machine auth (e.g., ADF talking to SQL). Managed Identities preferred where possible to eliminate secret rotation.
- **RBAC (Role-Based Access Control)**:
  - *Data Engineers*: Read/Write to Dev, Read-Only to Prod.
  - *AI Agent*: Read-Only to Curated Data; No access to PII fields.
  - *Business Users*: No direct DB access; authenticated via Portal App Registration.

## 2. Data Encryption

- **At Rest**: All storage services (ADLS, SQL, AI Search) use **Microsoft-managed keys** (Platform-managed keys) by default. Customer-managed keys (CMK) evaluated for specific high-sensitivity containers.
- **In Transit**: TLS 1.2+ mandatory for all internal and external connections.

## 3. Network Security

- **Isolation**: Resources deployed in a **data-vnet** with no public internet exposure.
- **Private Endpoints**: Used for connecting to PaaS services (ADLS, SQL, OpenAI) securely from within the VNet.

## 4. Data Governance

- **Catalog**: Azure Purview (future phase) or lightweight metadata store in SQL for Phase 1.
- **Data Classification**: tagging data as `Public`, `Internal`, `Confidential`, or `Strict`.
  - *Pricing Data*: Classified as `Strict`.
  - *Supplier Names*: Classified as `Internal`.
- **Lineage**:
  - "Source Document" -> "Vector Chunk" -> "AI Insight" -> "Recommendation".
  - Tracked via metadata tags in the Vector Store and SQL audit logs.

## 5. Compliance & Audit

- **Audit Logs**: All access to the "Pricing" tables is logged to Azure Monitor Logs.
- **Human-in-the-Loop Validation**: AI cannot finalize a transaction. Approval logs are immutable evidence of human oversight.
