# Hands-on Guide for Secure Open Source Software Vetting 🚀

[vet](https://github.com/safedep/vet) is a lightweight, policy-driven tool that helps you keep your open source projects safe. It quickly scans your code, dependencies, and even binary artifacts for vulnerabilities, licensing issues, and other security risks. With its simple command-line interface and easy integration into your CI/CD pipelines, `vet` ensures you catch problems early so you can build, deploy, and ship secure software with confidence.

## ✅ Verify the installation

```bash
vet version
```{{exec}}

## 🎯 Setup the environment

* Lets clone a sample repository to perform scanning using `vet`

```bash
git clone https://github.com/safedep/demo-client-python demo-app
cd ./demo-app
```{{exec}}

> [!NOTE]
> This repository is a simple Python application that uses intentionally old and vulnerable dependencies. 
> This will help us test the scanning capabilities of `vet`.