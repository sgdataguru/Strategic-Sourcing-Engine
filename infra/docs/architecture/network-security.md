# Network Security

## 1. Network Topology

Hub-and-Spoke model (Virtual WAN) or Single VNet design for Pilot.

- **VNet**: `sats-platform-vnet-dev`
- **Subnets**:
  - `snet-apps`: Hosting Azure Functions and Web Apps.
  - `snet-data`: Hosting SQL, Redis, AI Search (via Private Endpoints).
  - `snet-gw`: Application Gateway / Firewall (if required).

## 2. Ingress & Egress

- **Ingress**: All traffic enters via **Azure Application Gateway** (WAF V2) to protect the Portal and APIs from common web exploits (OWASP Top 10).
- **Egress**: All outbound traffic (e.g., to external Market APIs) is routed through **Azure Firewall** or NAT Gateway to verify destination IP reputation.

## 3. Private Link

All PaaS services are completely blocked from the public internet. Access is only possible via **Private Endpoints** injected into the `snet-data` subnet.

- **Storage**: `privatelink.blob.core.windows.net`
- **SQL**: `privatelink.database.windows.net`
- **OpenAI**: `privatelink.openai.azure.com`
- **AI Search**: `privatelink.search.windows.net`

## 4. DNS

- **Azure Private DNS Zones** are linked to the VNet to resolve the private IPs of the PaaS services.
