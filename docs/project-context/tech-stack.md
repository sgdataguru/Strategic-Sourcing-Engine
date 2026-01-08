# Technology Stack & Architecture: Strategic Sourcing AI Agent

## Architecture Overview

The solution focuses on a **Analysis-First** approach, where the AI Agent acts as an intelligent layer between internal/external data sources and the procurement team. The initial deployment involves a standalone Web Portal that aggregates insights without immediate deep ERP transactional integration.

## Core Components

### 1. User Interface (UI)

- **Primary Interface**: Web Portal.
- **Future Capabilities**: Mobile App integration, direct ERP UI embedding.
- **Key Features**:
  - Sourcing Project Input Form (Specs, Volume, Location).
  - Interactive Analysis Dashboard.
  - Recommendation Review & Approval Workflows.

### 2. AI & Analytics Engine

- **Capabilities**:
  - **Natural Language Processing (NLP)**: For parsing supplier documents and market reports.
  - **Multilingual Support**: Language-agnostic analysis to support global sourcing.
  - **Predictive Analytics**: For cost modeling and supplier risk assessment.

### 3. Data Integration Layer

#### Internal Systems

*Note: Deep integration is optional for the initial analysis-only phase but planned for future.*

- **SAP**: Singapore Hub ERP instance.
- **Microsoft D365**: Global ERP instance.

#### External Data Sources

- **Market Intelligence**: Bloomberg (potential), Trade Publications, Market Indices.
- **Supplier Data**: External supplier databases, public records.

## Security & Compliance

- **Data Privacy**: Critical requirement. Sensitive procurement data (pricing, volume forecasts) must remain confined within the procurement team's authorized environment.
- **Regulatory**: Must comply with SATS/WFS procurement policies and local regulations.
- **Autonomy Limits**: The AI Agent is **read-only/analyze-only** regarding transactional authority. It cannot negotiate or award business without human approval.

## Deployment Strategy

- **Phase 1 (Pilot)**: Standalone Web Portal with data connectors to key sources.
- **Phase 2**: Full ERP Integration (SAP/D365) for seamless RFQ generation.
- **Phase 3**: Automated PO placement for low-risk categories (post-validation).
