# Operations & CI/CD

## 1. Monitoring & Observability

- **Log Analytics Workspace**: The central sink for all logs.
- **Application Insights**: APM for the Python Backend and Azure Functions. Tracks request latency, failure rates, and dependencies (SQL/OpenAI calls).
- **Alerts**:
  - *Critical*: ADF Pipeline Failure, API Latency > 2s, 4xx/5xx Error Rate > 1%.
  - *Warning*: Storage Account capacity > 80%, OpenAI Token changes > threshold.

## 2. Disaster Recovery Strategy

- **RPO (Recovery Point Objective)**: 12 Hours (Last Batch Load).
- **RTO (Recovery Time Objective)**: 4 Hours (Infrastructure redeployment via Terraform).
- **Backup**:
  - **SQL**: Point-in-time restore enabled (7 days retention for Dev).
  - **ADLS**: Soft delete enabled (7 days) to prevent accidental deletions.

## 3. CI/CD Architecture

**GitHub Actions** powers the delivery pipeline.

### Environments

- `dev` (Automatic deploy on merge to main)
- `prod` (Manual approval gate required)

### Pipeline Stages

1. **Code Security**: SAST scan (Bandit for Python), Secret Scanning.
2. **Lint & Test**: `ruff` check, `pytest` unit tests (must pass).
3. **HCL Validate**: `terraform validate` && `tflint`.
4. **Plan**: `terraform plan` (Artifact saved).
5. **Apply**: `terraform apply` (using saved plan).

## 4. Cost Optimization

- **Tagging Strategy**: All resources tagged with `CostCenter`, `Environment`, `Owner`.
- **Spot Instances**: Use Spot instances for non-critical batch processing (if using scale-sets).
- **Budgets**: Azure Budget alerts configured at 50%, 80%, and 100% of monthly forecast.
