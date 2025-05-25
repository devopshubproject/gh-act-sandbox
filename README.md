# gh-act-sandbox
Sample project demonstrating how to safely run and test GitHub Actions locally with act in local environment before check-in the code.


# GitHub Actions + act + Terraform: Safe Local CI/CD Sandbox

> ✅ Test GitHub Actions locally.  
> 🔐 Avoid cloud costs.  
> 🧪 Validate functional changes safely.  
> 🖥️ Works on private environments.

---

## 🧩 What Is This?

This repository demonstrates how to:
- Use [`act`](https://github.com/nektos/act) to run GitHub Actions locally.
- Test Terraform workflows safely **without applying real infrastructure**.
- Work in **secure, private, or self-hosted runner environments**.
- Validate modules, backends, and plans with dummy credentials and local state.

---

## 🔧 Prerequisites

- Docker installed locally
- `act` installed ([docs](https://github.com/nektos/act#installation))
- Terraform CLI installed (`>= 1.3.0`)
- Linux or macOS (Windows via WSL works too)
- Optional: self-hosted GitHub Actions runner

---

## 🏗️ Repository Structure

```
.
├── .github/workflows/terraform.yml # GitHub Actions workflow
├── main.tf # Terraform example
├── backend.tf # Local backend config
├── variables.tf # Input variables
├── .secrets.dummy # Fake credentials for act
└── README.md
```

```yaml

---

## 🚀 Running Locally with `act`

### 🧪 Dry Run Plan

```bash
act workflow_dispatch \
  -P ubuntu-latest=ghcr.io/catthehacker/ubuntu:act-latest \
  --secret-file .secrets.dummy \
  --env DRY_RUN=true
```

> ✅ No real cloud infra is touched! Uses local backend and fake secrets.


# 💡 Tips for Safe Testing

| Scenario                | Recommendation                                      |
|-------------------------|-----------------------------------------------------|
| Avoid real infra changes| Use `terraform plan`, local backend, dummy secrets  |
| Test apply logic        | Wrap in `if: env.DRY_RUN != 'true'`                 |
| Network-sensitive       | Run with `--bind` or isolate Docker network         |
| Debug failures          | Add `--verbose` to `act` or run in bash container     |

# 📦 Why This Matters
`act` enables fast, cost-free testing of GitHub Actions workflows. Combined with Terraform and local backends, it lets you:

- Catch errors early

- Avoid cloud billing

- Safely debug changes

- Test from secure/self-hosted runners
# 📚 Resources
- [act GitHub Repo](https://github.com/nektos/act)

- [GitHub Actions Docs] (https://docs.github.com/en/actions)

- [Terraform Docs] (https://developer.hashicorp.com/terraform/docs)

# License

This project is licensed under the [MIT](https://opensource.org/license/MIT) - see the LICENSE file for details.

Please replace `https://github.com/premkumar-palanichamy/gh-act-sandbox` with the URL of your Git repository if you have one. This README provides a comprehensive guide to your Git Mirroring concept and can be extended or modified as needed.

## <font color = "red"> Follow-Me </font>

[![Portfolio](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/premkumar-palanichamy)

<p align="left">
<a href="https://linkedin.com/in/premkumarpalanichamy" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="premkumarpalanichamy" height="25" width="25" /></a>
</p>

[![youtube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/channel/UCJKEn6HeAxRNirDMBwFfi3w)