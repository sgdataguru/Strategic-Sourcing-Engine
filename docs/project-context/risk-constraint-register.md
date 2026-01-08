# Risk & Constraint Register: Strategic Sourcing AI Agent

## 3.1 Overview

This register captures the strategic risks and boundary conditions impacting the SATS/WFS Data Platform. It is a living document to be reviewed monthly by the Project Steering Committee.

## 3.2 Risk Register

| Risk ID | Risk Description | Likelihood | Impact | Mitigation Strategy | Owner | Phase |
|---------|-----------------|------------|--------|---------------------|-------|-------|
| **R-001** | **AI Hallucination**: Agent generates incorrect pricing or nonexistent supplier details. | Medium | Critical | **Grounding**: Use strict RAG architecture (cite sources). **Human-in-the-Loop**: Mandatory Manager approval for all recommendations. | Lead Architect | Phase 1 |
| **R-002** | **Data Silos**: Unable to correlate SAP (SG) and D365 (Global) item codes due to poor master data quality. | High | High | **Master Data Map**: Create a lightweight "Global Material Map" entity in Phase 1. Don't wait for perfect ERP alignment. | Data Steward | Phase 2 |
| **R-003** | **Supplier Resistance**: External suppliers refuse to engage with AI-driven or automated RFQ processes. | Medium | Medium | **Change Mgmt**: frame it as "Faster Payment/Award". Keep human contact for strategic suppliers. | Procurement Lead | Phase 3 |
| **R-004** | **Regulatory Blockers**: New AI regulations (EU AI Act) limit automated decision-making in procurement. | Low | High | **Compliance**: Maintain "Analysis-Only" mode. Ensure full explainability of AI scoring. | Legal | All |
| **R-005** | **API Rate Limits**: External market data providers throttle the agent's real-time queries. | High | Medium | **Caching**: Implement "Data Freshness" policies to cache rates for 24h. | Tech Lead | Phase 1 |

## 3.3 Assumptions

- **A-001**: SATS/WFS will provide access to an Azure Subscription with OpenAI Service enabled by Month 1.
- **A-002**: SAP and D365 teams can provide read-only access/exports of Material Master and Vendor Master data.
- **A-003**: English is the primary language for the Pilot; translation services will be added in Phase 2.
- **A-004**: Users have basic web proficiency and do not require deep training on the UI.

## 3.4 Constraints

- **C-001 (Security)**: **No Sensitive Data Leaks**. Pricing and contract data must never be used to train public models. (Private Azure OpenAI instance required).
- **C-002 (Infrastructure)**: **Azure Only**. Solution must reside within SATS's Azure tenant.
- **C-003 (Scope)**: **No Transactional Write-back** in Phase 1. The system is strictly advisory.
- **C-004 (Timeline)**: **Jan 2027 Deadline**. The Go-Live date is fixed to align with the fiscal year.

## 3.5 Risk Monitoring & Review

- **Frequency**: Monthly review with Steering Committee.
- **Escalation**: Any "High" impact risk occurring triggers immediate Project Lead notification.
- **Retirement**: Risks are closed when the mitigation is verified in Production or the phase completes.
