# Gen-e2 Data Platform Project (SATS)

## Project Overview

This project establishes a robust Data Platform for SATS, leveraging Azure Cloud infrastructure and Gen-e2 principles. It is designed to handle both Batch and Streaming data pipelines, integrating with key enterprise systems like SAP and D365.

## Technology Stack

- **Cloud Provider**: Azure
- **Infrastructure as Code**: Terraform
- **Programming Language**: Python
- **CI/CD**: GitHub Actions
- **Containerization**: Docker

## Getting Started

### Prerequisites

- Python 3.9+
- Azure CLI
- Terraform
- Docker

### Setup

1. **Clone the repository**:

   ```bash
   git clone https://github.com/Palo-IT-GitHub-Demos/sats.git
   cd sats
   ```

2. **Install Dependencies**:

   ```bash
   bash scripts/setup.sh
   ```

3. **Infrastucture deployment**:
   Refer to `infra/docs/README.md` for detailed instructions on deploying the Azure resources using Terraform.

## Documentation

- **Architecture**: [View Architecture](docs/architecture/)
- **Features**: [View Features](docs/features/)
- **Integration**: [View Integration Specs](docs/integration/)

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests.
