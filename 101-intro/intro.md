# Hands-on Guide for Secure Open Source Software Vetting 🚀

[vet](https://github.com/safedep/vet) is a tool for identifying risks in open source software supply chain. It goes beyond just vulnerabilities and provides visibility on OSS package risks due to it's license, popularity, security hygiene, and more. vet is designed with the goal of helping software development teams consume safe and trusted OSS components through automated vetting in CI/CD.

## 🎯 Overview

This guide will walk you through the process of using `vet` to scan a sample repository for vulnerabilities and other security risks.
This involves the following steps:

1. Setup the environment
2. Scan the repository
3. Query the scan data using CEL filters
4. Generate a report
5. Troubleshoot common issues