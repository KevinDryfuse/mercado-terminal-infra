# Mercado Terminal Infrastructure

This repository manages Terraform-based cloud infrastructure deployments for the Mercado Terminal product. It allows for rapid onboarding, consistent resource management, and secure multi-client support using Azure and GitHub Actions automation.

---

## 🚀 Overview and Purpose

This infrastructure is designed to:

- Quickly provision secure, isolated environments for multiple Mercado Terminal clients.
- Standardize resource management and naming conventions for clarity.
- Ensure robust security and clear cost accountability.
- Enable automatic and reliable deployments using Terraform and GitHub Actions.

---

## 📂 Project Structure

```text
mercado-terminal-infra/
├── modules/
│ └── network/ # Azure networking resources
├── envs/
│ └── <client>/ # Client-specific Terraform configurations (e.g., envs/dg)
├── .github/workflows/
│ └── client-deploy.yml # GitHub Actions workflow
```

---

## 🛠️ Prerequisites and Setup

### Tools Required

- [Terraform](https://www.terraform.io/) (> `v1.12.1` recommended)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- [GitHub CLI](https://cli.github.com/) (optional but helpful)

### Local Development Setup

1. Clone the repository:
```bash
git clone https://github.com/KevinDryfuse/mercado-terminal-infra.git
cd mercado-terminal-infra
