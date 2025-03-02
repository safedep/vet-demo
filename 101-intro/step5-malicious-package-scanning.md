## Malicious Package Scanning

`vet` supports analyzing *code* of OSS packages for malicious behavior using
[SafeDep Malicious Package Analysis](https://docs.safedep.io/cloud/malware-analysis) service.

* Register for a free SafeDep account and get your API key

`vet cloud quickstart`{{copy}}

- Follow the instructions to create a new account
- Obtain your API key
- Configure the API key for use with `vet`

* Verify that `vet` is configured correctly with API key

`vet cloud whoami`{{exec}}

> `vet cloud whoami` command will print the current user information

* Enable `vet` experimental command for malicious package inspection

`export VET_ENABLE_PACKAGE_INSPECT_COMMAND=true`{{exec}}

* Scan a single package by its package URL

`vet inspect malware --purl pkg:/npm/postcss-optimizer@3.2.7`{{exec}}

* Enable malicious package scanning for `vet` scan

`vet scan --malware`{{exec}}
