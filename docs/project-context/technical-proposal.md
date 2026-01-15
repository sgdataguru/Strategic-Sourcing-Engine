# Technical Proposal: SATS Next-Gen Strategic Sourcing Engine

**From Manual Analysis to Automated Intelligence**

---

## 1. Executive Summary: The Struggle for Strategic Capacity

### The Efficiency Challenge

Here's the reality: procurement teams are drowning in data, not swimming in insights.

Right now, skilled buyers at SATS spend **weeks** manually sifting through spreadsheets, cross-referencing supplier databases, and hunting down market intelligence across disconnected systems. It's like trying to analyze the entire internet with just a notebook and a pen—technically possible, but painfully slow.

**The impact?** Strategic capacity evaporates. Instead of negotiating better deals or building supplier relationships, your best people are stuck being data janitors.

### The Control Evolution

Leadership needs a fundamental shift: moving teams from **"data gathering mode"** to **"decision making mode"**.

This isn't about replacing human judgment—it's about amplifying it. The Strategic Sourcing Engine automates the heavy lifting of analysis and compliance checking, while keeping humans firmly in the driver's seat. No black boxes. No autonomous purchasing. Just better, faster intelligence that turns **weeks into minutes**.

Think of it as upgrading from static PowerPoint reports to a real-time, AI-powered mission control for your procurement operations.

---

## 2. Technical Approach: The "Intelligent Sourcing Engine"

This isn't just another procurement tool—it's a complete rethinking of how sourcing intelligence flows through your organization.

### Unified Data Ingestion

**Microsoft Fabric** serves as the central nervous system, pulling in:
- **Structured data**: Historical pricing, supplier records, contract terms
- **Unstructured chaos**: PDF reports, email threads, market research documents
- **Volume**: Processing 900–1,000+ RFQ/tender events annually

Everything flows into OneLake, Microsoft's unified data lakehouse, where it's normalized, indexed, and ready for instant access.

### Language-Agnostic Intelligence Layer

Singapore operates in a multilingual reality. The engine handles:
- **Translation**: Seamless processing of English, Mandarin, Malay, Tamil
- **Normalization**: Converting regional terminology to standardized categories
- **Context preservation**: Understanding that "catering services" means different things in different markets

**Why this matters for Phase 1**: Direct connectivity to 900–1,000 annual RFQ/tender events without language barriers slowing down analysis.

### Strict Grounding & Guardrails: The Responsible AI Framework

Here's what separates this from typical "AI hype":

#### **No Hallucinations Allowed**
Every recommendation is grounded in concrete data:
- Historical pricing from your own systems
- Validated market intelligence
- Verified supplier performance metrics

If the data doesn't exist, the system explicitly flags it as **"Unknown"**—no making things up.

#### **Auditability First**
- **Automated logging** maintained for minimum 1 year
- Every recommendation traceable to source data
- Full decision trail for regulatory audits
- Real-time troubleshooting capability

#### **Bias & Fairness Checks**
Built-in monitoring ensures:
- Supplier scoring remains objective
- No hidden preferences in recommendations
- Regular fairness audits
- Transparent scoring methodology

#### **Zero Autonomous Actions**
The engine **cannot**:
- Award contracts independently
- Negotiate pricing without human approval
- Commit organizational resources
- Override procurement policies

**Human oversight is mandatory at every decision point.**

---

## 3. Technical Flow: From Requirement to Recommendation

Let's walk through how this actually works in practice:

### Step 1: Buyer Initiates Analysis
A buyer logs into the **secure web portal** and enters:
- Item specifications (e.g., "Industrial cleaning supplies")
- Service requirements (e.g., "Daily terminal cleaning, 24/7 coverage")
- Location (e.g., "Singapore Changi Airport")
- Volume (e.g., "12-month contract, 5,000 sqm daily")
- Target pricing (optional benchmark)

**Time required**: 5 minutes

### Step 2: Internal Data Retrieval
The system instantly accesses:
- **SAP Singapore**: Historical purchase orders, supplier contracts, pricing trends
- **D365 Global**: Cross-regional supplier data, compliance records
- **Data source**: Curated lakehouse (no direct ERP database queries needed)

**Time required**: Seconds (batch-prepared data architecture)

### Step 3: Market Intelligence Gathering
**Azure Functions** trigger on-demand:
- Real-time market indices (commodity prices, labor rates)
- Pricing benchmarks from external sources
- Supplier financial health data
- Industry trend reports

**All with full audit trail storage**—every API call logged, every data point sourced.

**Time required**: 30-60 seconds

### Step 4: AI-Powered Reasoning
**Azure OpenAI** (GPT-4o) analyzes:
- Structured pricing data (SQL/tabular format)
- Vectorized unstructured documents (RAG architecture via Azure AI Search)
- Historical supplier performance patterns
- Risk indicators and compliance flags

The AI reasons through:
- "Based on the last 3 years, Supplier X delivered 95% on-time for similar contracts"
- "Market prices for this category increased 8% in Q4 2025"
- "Alternative Supplier Y has 20% lower pricing but longer lead times"

**Time required**: 2-3 minutes

### Step 5: Recommendation Generation
The buyer receives:
- **Supplier shortlist** (3-5 vendors) with confidence scores
- **Price benchmarks** with historical comparison
- **Risk flags** (financial stability, delivery performance, compliance issues)
- **Compliance assessment** (policy adherence, certification status)
- **Source citations** for every claim

**Format**: Interactive dashboard + downloadable report

### Step 6: Human Review & Approval
Buyers and managers:
- Review recommendations with full transparency
- Accept, reject, or annotate with notes
- Request additional analysis if needed
- Make final decision with complete decision logging

**All actions logged for audit compliance**

**Total time: Analysis that used to take weeks now takes ~10 minutes**

---

## 4. High-Level Architecture: Microsoft Azure Native Stack

### Azure Component Breakdown & Cost Estimates

| **Component** | **Purpose** | **Tier/SKU** | **Monthly Cost (USD)** | **Annual Cost (USD)** |
|---------------|-------------|--------------|------------------------|----------------------|
| **Azure App Service** | Web Portal (React frontend) | P1v3 (2 instances, high availability) | $400 | $4,800 |
| **Microsoft Fabric** | Unified data lakehouse (OneLake) | F64 (64 capacity units) | $5,120 | $61,440 |
| **Azure OpenAI Service** | GPT-4o reasoning & translation | Pay-as-you-go (est. 5M tokens/month) | $750 | $9,000 |
| **Azure AI Search** | RAG engine for document grounding | Standard S1 (50GB storage) | $250 | $3,000 |
| **Azure Functions** | Market data fetching & orchestration | Premium EP1 (elastic, always-ready) | $300 | $3,600 |
| **Azure Cosmos DB** | Low-latency metadata storage | Serverless (provisioned throughput) | $200 | $2,400 |
| **Azure Key Vault** | Secrets management & encryption | Standard tier | $5 | $60 |
| **Azure Monitor** | Logging, telemetry, alerts | Standard tier (100GB logs/month) | $250 | $3,000 |
| **Azure AI Foundry** | Bias detection & fairness monitoring | Pay-as-you-go (usage-based) | $150 | $1,800 |
| **Azure Storage** | Blob storage for documents & backups | Standard LRS (5TB storage) | $100 | $1,200 |
| **Azure API Management** | API gateway & rate limiting | Consumption tier | $50 | $600 |
| **Azure Application Insights** | Performance monitoring & diagnostics | Enterprise tier | $100 | $1,200 |
| **Azure Active Directory** | Authentication & identity management | Premium P1 (50 users) | $300 | $3,600 |
| **Azure DevOps** | CI/CD pipelines & deployment | Basic (parallel jobs) | $150 | $1,800 |
| **Azure Load Balancer** | Traffic distribution | Standard tier | $25 | $300 |
| **Network Egress** | Data transfer out (estimated) | Variable | $200 | $2,400 |
| **Backup & Disaster Recovery** | Azure Backup + geo-redundancy | Standard | $150 | $1,800 |

### **Total Estimated Cost**
- **Monthly**: ~$8,500 USD
- **Annual**: ~$102,000 USD

**Note**: These are estimates based on Singapore region pricing and pilot-phase usage (30 buyers, 900-1,000 events/year). Actual costs may vary based on:
- Data volume growth
- API call frequency
- Storage retention policies
- Geographic expansion in Phase 2

### Architecture Diagram (Logical Flow)

```
┌─────────────────────────────────────────────────────────────────┐
│                        USER LAYER                                │
│  ┌──────────────────────────────────────────────────────────┐  │
│  │  Secure Web Portal (React + Azure App Service)          │  │
│  │  - Buyer Input Forms                                      │  │
│  │  - Interactive Dashboards                                 │  │
│  │  - Approval Workflows                                     │  │
│  └──────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                    API GATEWAY & ORCHESTRATION                   │
│  ┌──────────────────────────────────────────────────────────┐  │
│  │  Azure API Management + Azure Functions                  │  │
│  │  - Request routing & rate limiting                        │  │
│  │  - Market data fetching (on-demand)                       │  │
│  │  - Workflow orchestration                                 │  │
│  └──────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                    INTELLIGENCE LAYER                            │
│  ┌────────────────────┐  ┌────────────────────┐                │
│  │  Azure OpenAI      │  │  Azure AI Search   │                │
│  │  (GPT-4o)          │  │  (RAG Engine)      │                │
│  │  - Reasoning       │  │  - Vector search   │                │
│  │  - Translation     │  │  - Document        │                │
│  │  - Summarization   │  │    grounding       │                │
│  └────────────────────┘  └────────────────────┘                │
│                              ↓                                   │
│  ┌──────────────────────────────────────────────────────────┐  │
│  │  Azure AI Foundry (Governance Layer)                     │  │
│  │  - Bias detection                                         │  │
│  │  - Fairness scoring                                       │  │
│  │  - Audit logging                                          │  │
│  └──────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                      DATA FOUNDATION                             │
│  ┌──────────────────────────────────────────────────────────┐  │
│  │  Microsoft Fabric (OneLake)                              │  │
│  │  - SAP Ariba data (Singapore)                            │  │
│  │  - D365 Global data                                       │  │
│  │  - Market intelligence feeds                              │  │
│  │  - Historical tender records                              │  │
│  └──────────────────────────────────────────────────────────┘  │
│                              ↓                                   │
│  ┌────────────────────┐  ┌────────────────────┐                │
│  │  Azure Cosmos DB   │  │  Azure Storage     │                │
│  │  (Metadata)        │  │  (Documents/PDFs)  │                │
│  └────────────────────┘  └────────────────────┘                │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                   MONITORING & SECURITY                          │
│  ┌────────────────────┐  ┌────────────────────┐                │
│  │  Azure Monitor     │  │  Azure Key Vault   │                │
│  │  - Telemetry       │  │  - Secrets mgmt    │                │
│  │  - Alerts          │  │  - Encryption keys │                │
│  └────────────────────┘  └────────────────────┘                │
└─────────────────────────────────────────────────────────────────┘
```

### Key Architectural Principles

1. **Zero Direct ERP Access**: All data flows through curated Fabric lakehouse (reduces system risk)
2. **API-First Design**: Every component communicates via documented APIs (enables future extensibility)
3. **Stateless Functions**: Azure Functions for scalable, event-driven processing
4. **Defense in Depth**: Multiple security layers (Azure AD, Key Vault, network isolation)
5. **Observability by Default**: Every transaction logged and monitored

---

## 5. Roadmap: The Evolution of Sourcing

### Phase 1 – Singapore Pilot (6 Sprints = 12 Weeks)

**Goal**: Enable 30 buyers to analyze tenders in **minutes instead of weeks**

**Focus**: Non-Food categories (cleaning supplies, facility maintenance, logistics)

**Scope**:
- ✅ Web Portal with intuitive UI
- ✅ Connection to SAP Ariba historical data
- ✅ Basic market intelligence integration
- ✅ Azure OpenAI reasoning engine
- ✅ RAG-powered document search
- ✅ Audit logging & compliance tracking

**Timeline Breakdown**:
| Sprint | Focus | Deliverables |
|--------|-------|--------------|
| **Sprint 1-2** | Foundation | Infrastructure setup, Fabric data ingestion, authentication |
| **Sprint 3-4** | Intelligence | Azure OpenAI integration, RAG engine, market data APIs |
| **Sprint 5-6** | User Experience | Web portal, workflows, testing, user onboarding |

**Success Metrics**:
- Sourcing analysis time reduced from **3-4 weeks to <15 minutes**
- 80% of recommendations rated "relevant" or "highly relevant"
- 30 buyers trained and actively using the system
- Zero security incidents during pilot

**Outcome**: **Deployed agent transforming buyer productivity**

### Phase 2 – Global Strategist (Months 4-12)

**Expansion Scope**:
- ✅ Food & Commodities categories
- ✅ Rollout to Europe (London, Frankfurt)
- ✅ Rollout to USA (New York, Los Angeles)
- ✅ Multi-currency & multi-language support
- ✅ Advanced predictive analytics
- ✅ Future: Automated RFQ generation (draft mode)

**Integration Depth**:
- Direct D365 Global connectors
- Real-time supplier risk dashboards
- Cross-regional pricing benchmarks
- Automated compliance checking

**Outcome**: **Global sourcing intelligence platform**

---

## 6. Delivery Approach: Agile with Guardrails

### Sprint Cadence
- **2-week sprints** (standard Scrum)
- Daily standups (async updates via Slack)
- Sprint planning + retrospectives
- Demo to stakeholders at sprint end

### Governance & Compliance
- **Monthly Architecture Review Board (ARB)** presentations
- **ISO 42001 compliance** checkpoints (AI management system standard)
- Bias calibration phases:
  - Sprint 3: Initial bias audit
  - Sprint 5: Fairness metrics review
  - Post-launch: Continuous monitoring

### Risk Mitigation
- **No Big Bang**: Incremental rollout (pilot → regional → global)
- **Parallel Run**: Buyers continue manual processes during pilot (safety net)
- **Kill Switch**: Ability to disable AI recommendations instantly if issues arise
- **User Feedback Loop**: Weekly surveys + monthly focus groups

### Transparency Commitments
- ✅ Open documentation of AI decision logic
- ✅ Explainability reports for every recommendation
- ✅ Monthly performance dashboards shared with leadership
- ✅ Quarterly external fairness audits

---

## 7. Team Composition & Commercials

### Specialized AI Pod Structure

This isn't a generic "throw developers at it" project. We're assembling a **specialized AI pod** for accelerated delivery and deep technical expertise.

**Core Team (12-week pilot)**:

| Role | Allocation | Responsibilities |
|------|------------|------------------|
| **Solution Architect** | 0.5 FTE | Azure architecture, integration patterns, security design |
| **AI/ML Engineer** | 1.0 FTE | Azure OpenAI integration, RAG implementation, model tuning |
| **Backend Developer** | 1.5 FTE | API development, Azure Functions, data pipelines |
| **Frontend Developer** | 1.0 FTE | React portal, UI/UX, dashboard development |
| **Data Engineer** | 1.0 FTE | Microsoft Fabric setup, data ingestion, ETL pipelines |
| **DevOps Engineer** | 0.5 FTE | CI/CD, infrastructure automation, monitoring setup |
| **QA Engineer** | 0.5 FTE | Testing, quality assurance, compliance validation |
| **Product Owner** | 0.5 FTE | Requirements, stakeholder management, sprint planning |
| **Scrum Master** | 0.25 FTE | Sprint facilitation, impediment removal |

**Total**: ~6.75 FTE for pilot phase

### Commercial Model Options

**Option A: Fixed-Price Pilot**
- **Total**: $450,000 USD (12 weeks)
- Includes: Team, Azure infrastructure, training
- Risk: Scope change penalties

**Option B: Time & Materials**
- **Rate**: $220/hour blended team rate
- **Estimated**: $470,000 USD (12 weeks, 6.75 FTE)
- Flexibility: Adjust scope as needed

**Option C: Hybrid (Recommended)**
- **Fixed Core**: $350,000 (infrastructure + core features)
- **Variable Enhancement**: T&M pool ($100,000) for advanced features
- Balance of predictability and flexibility

**Ongoing Costs (Post-Pilot)**:
- Azure infrastructure: ~$8,500/month
- Support & maintenance: 2 FTE (~$20,000/month)
- Continuous improvement: 1 sprint/quarter (~$35,000/quarter)

### ROI Projection (Conservative)

**Assumptions**:
- 30 buyers in pilot
- Each analyzes 10 tenders/year manually (3 weeks/tender)
- Fully burdened buyer cost: $80,000/year
- Time saved: 2.5 weeks/tender

**Calculation**:
- Manual effort: 30 buyers × 10 tenders × 3 weeks = 900 person-weeks
- AI-assisted effort: 30 buyers × 10 tenders × 0.5 weeks = 150 person-weeks
- **Time saved**: 750 person-weeks/year = 14.4 FTE
- **Value**: 14.4 FTE × $80,000 = **$1.15M/year**

**Payback Period**: ~5 months

---

## 8. What Makes This Different?

Let's be real—there's a lot of AI hype in procurement right now. Here's what actually sets this apart:

### 1. **Grounded in Reality, Not Hype**
Every recommendation is traceable to real data. No "trust the AI magic" nonsense.

### 2. **Human-in-the-Loop by Design**
This amplifies human expertise, not replaces it. Buyers remain in control.

### 3. **Built for Compliance First**
Audit trails, bias monitoring, and explainability aren't afterthoughts—they're core features.

### 4. **Microsoft Native Stack**
Leverages existing Azure/Microsoft 365 investments. No vendor lock-in to exotic AI platforms.

### 5. **Phased Value Delivery**
Pilot proves value in 12 weeks. No multi-year "big bang" implementations.

### 6. **Language-Agnostic from Day 1**
Handles Singapore's multilingual reality natively. Global-ready architecture.

---

## 9. The Bottom Line

**The Problem**: Procurement teams spend weeks on manual analysis, limiting strategic capacity.

**The Solution**: AI-powered Sourcing Engine that delivers analysis in minutes, not weeks.

**The Approach**: Azure-native, RAG-based architecture with strict governance and human oversight.

**The Timeline**: 12-week pilot, production-ready in Singapore.

**The Investment**: ~$450K pilot + $8.5K/month Azure infrastructure.

**The Return**: $1.15M/year in time savings (conservative estimate).

**The Differentiator**: Responsible AI framework with full auditability and zero autonomous actions.

---

## 10. Next Steps

**Immediate Actions**:
1. **ARB Review**: Present to Architecture Review Board (target: Week of Jan 20, 2026)
2. **Stakeholder Alignment**: Confirm pilot user group (30 Singapore buyers)
3. **Azure Tenancy Setup**: Provision sandbox environment (1 week)
4. **Data Access Agreements**: Finalize SAP/D365 data extraction protocols

**Decision Gates**:
- **Go/No-Go**: End of Sprint 2 (infrastructure + data ingestion validated)
- **Pilot Launch**: Sprint 6 completion (March 2026)
- **Production Readiness**: Post-pilot review (April 2026)

---

## Appendix: Tone & Style Notes

*This proposal is written in the style of Marques Brownlee (MKBHD)*:
- **Clear, jargon-free explanations** (but technically accurate)
- **Real-world context** (not just feature lists)
- **Honest assessment** (acknowledging limitations and risks)
- **Visual thinking** (architecture diagrams, flow charts)
- **Bottom-line-up-front** (key insights early, details later)
- **Practical focus** (what actually works, not just what's theoretically possible)

*"The best kind of tech is the kind that just works—without you having to think about it."* – MKBHD philosophy applied to enterprise AI.

---

**Document Version**: 1.0  
**Last Updated**: January 15, 2026  
**Authors**: Strategic Sourcing Engine Project Team  
**Status**: Draft for ARB Review
