# Value Delivery Roadmap: Strategic Sourcing AI Agent

## 2.1 Overview & Phasing Philosophy

This roadmap defines the strategic phasing for the SATS/WFS Strategic Sourcing AI Agent.
**Philosophy**: We follow a "Crawl-Walk-Run" approach, prioritizing a minimal viable "Analysis-Only" pilot to prove value and build trust before expanding to complex transactional integrations.

## 2.2 Strategic Phasing Approach

- **Value First**: Phase 1 targets "Non-Food" in Singapore because the data is accessible and the savings potential is high.
- **Trust before Automation**: We prove the AI's *analytical* competence before granting it *transactional* authority.
- **Foundation Early**: Security and Audit Logging are Phase 0 requirements, given the sensitivity of procurement data.

## 2.3 Phase Definitions

### Phase 1: Pilot & Analytical Foundation (Jan - Sep 2026)

**Strategic Objectives**: Prove the AI Agent can reduce sourcing analysis time and generate valid recommendations.
**Key Capabilities**:

- Web Portal Interface (Input/Output).
- Ingestion of Singapore SAP Material Masters (Batch).
- Azure OpenAI integration for RAG over supplier documents.
- Basic "Market Rate" comparison for Non-Food categories.
**Business Value & Outcomes**:
- **Outcome**: Sourcing analysis time reduced from Weeks to Minutes for pilot categories.
- **Metric**: Adoption rate by Singapore procurement team > 50%.
**Success Criteria**:
- 20+ Pilot sourcing projects completed via the platform.
- User feedback confirms "High Relevance" of recommendations.
**Dependencies**: Azure Environment Setup, Pilot User Group identification.

### Phase 2: Integrated Intelligence & Global Rollout (Oct 2026 - Jun 2027)

**Strategic Objectives**: Seamless workflow integration and geographic expansion.
**Key Capabilities**:

- Direct connector to Global D365 ERP.
- Expansion to "Food" & "Commodity" categories.
- Automated "RFQ Package" generation (Draft mode).
- Suppliers Risk 360 Dashboard.
**Business Value & Outcomes**:
- **Outcome**: Global view of spending and supplier risks.
- **Metric**: 20% reduction in external supplier risk incidents.
**Success Criteria**:
- Successful rollout to Europe/USA hubs.
- System handles multi-currency/multi-language sourcing events.

### Phase 3: Transactional Autonomy (Jul 2027+)

**Strategic Objectives**: End-to-End automation for low-risk sourcing.
**Key Capabilities**:

- Automated RFQ sending to suppliers.
- Automated PO creation for low-value/high-frequency items (within pre-approved limits).
- Predictive Demand implementation.
**Business Value & Outcomes**:
- **Outcome**: Fully autonomous sourcing for "long-tail" spend.
- **Metric**: 30% reduction in manual PO processing costs.

## 2.4 Cross-Phase Dependencies

- **Data Quality**: Phase 2 (Global) depends heavily on the "Data Cleanse" of the D365 Master Data which must run parallel to Phase 1.
- **Legal/Compliance**: Automated RFQ (Phase 3) requires a Legal review of AI-generated contracts, which should start during Phase 2.

## 2.5 Value Milestones

- **Mar 2026**: Requirement Freeze & RFQ (Go/No-Go).
- **Jun 2026**: Analysis Engine Prototype (Internal Demo).
- **Sep 2026**: Pilot Go-Live (Singapore).
- **Jan 2027**: Official Go-Live (Phase 1 Complete).
- **Jun 2027**: Global Expansion Complete.
