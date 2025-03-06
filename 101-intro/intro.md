# Hands-on Guide for Secure Open Source Software Vetting 🚀

[vet](https://github.com/safedep/vet) is a tool for identifying risks in open source software supply chain. It goes beyond just vulnerabilities and provides visibility on OSS package risks due to it's license, popularity, security hygiene, and more. vet is designed with the goal of helping software development teams consume safe and trusted OSS components through automated vetting in CI/CD.

## 🔑 Key Features

- Open source component inventory
- Policy as code for open source threat protection
- Code context based vulnerability prioritization
- Malicious package scanning with active code analysis
- Reporting and cloud sync
- CI/CD integration

## 🎯 Overview

This guide will walk you through the process of using `vet` to scan a sample repository for vulnerabilities and other security risks.
This involves the following steps:

1. Setup the environment
2. Scan the repository
3. Query the scan data using CEL filters
4. Generate a report
5. Malicious Package Analysis
6. Integration with CI/CD (GitHub Actions)