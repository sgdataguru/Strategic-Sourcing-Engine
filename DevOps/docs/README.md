# DevOps Documentation

## CI/CD Pipeline

The project uses GitHub Actions for Continuous Integration and Continuous Deployment.

### Workflows

- **Code Quality**: Runs linting and unit tests on every push and PR to `main`.
- **Infrastructure Check**: Validates Terraform configuration.

### Secrets Required

The following secrets must be configured in the GitHub Repository settings:

- `AZURE_CREDENTIALS`: JSON blob with Azure Service Principal credentials.
- `ARM_SUBSCRIPTION_ID`: Azure Subscription ID.
- `ARM_TENANT_ID`: Azure Tenant ID.
- `ARM_CLIENT_ID`: Service Principal Client ID.
- `ARM_CLIENT_SECRET`: Service Principal Client Secret.

## Infrastructure Management

Infrastructure is managed via Terraform located in `infra/terraform`.

- **State Management**: Local (default) or Remote (Azure Blob Storage - recommended for teams).
- **Environment**: Controlled via variables in `variables.tf`.
