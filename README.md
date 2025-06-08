# 🛠 Mercado Terminal Infrastructure

This repository defines the cloud infrastructure for the **Mercado Terminal** project — a distributed, embedded coupon kiosk system deployed at retail partners like Dollar General.

Infrastructure is managed using [Terraform](https://www.terraform.io/) and deployed to **Microsoft Azure** using **GitHub Actions**.

---

## 📦 Resources Created

This Terraform setup provisions the following Azure components:

| Resource Type          | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| **Resource Group**     | Isolated per environment (e.g. `rg-kiosk-dg-dev`)                           |
| **Virtual Network**    | Custom VNet with subnets for apps and databases                             |
| **Subnets**            | Separate subnets: `apps-subnet` and `db-subnet`                             |
| **Private DNS Zone**   | Internal resolution for PostgreSQL flexible server                          |
| **PostgreSQL Server**  | Azure Flexible Server (private access, no public endpoint)                  |
| **Private DNS Link**   | Connects the DNS zone to the VNet                                            |

---

## 🚀 CI/CD via GitHub Actions

GitHub Actions is used to:

- 🔍 Run `terraform plan` on every pull request
- ✅ Apply infrastructure automatically after PRs are merged to `main`
- 🔐 Authenticate securely with Azure using a GitHub Secret (`AZURE_CREDENTIALS`)

---

## 🔐 Required GitHub Secrets

| Secret Name               | Purpose                                      |
|---------------------------|----------------------------------------------|
| `AZURE_CREDENTIALS`       | Azure service principal credentials (JSON)   |
| `TF_VAR_DB_ADMIN_PASSWORD`| Database admin password used by Terraform    |

> Add these secrets under: `Settings → Secrets and variables → Actions`

---

## 🧪 Environments

Currently supported environments:

- 🏬 `dg` — Dollar General kiosk deployment

> Add new directories under `envs/` for other clients like `kroger`, `homedepot`, etc.

---

## 📁 Project Structure

```commandline
mercado-terminal-infra/
├── envs/
│ └── dg/ # Dollar General environment
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── modules/
│ ├── network/ # Reusable VNet module
│ └── postgres/ # Reusable PostgreSQL module
└── .github/
└── workflows/
└── terraform-ci.yml # CI pipeline for Terraform
```

---

## 🧰 Getting Started

Clone the repo and navigate to the environment:

```bash
cd envs/dg
terraform init
terraform plan
terraform apply
