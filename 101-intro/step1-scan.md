## 🎯 Basic Usage

* Run a scan using `vet`

```bash
vet scan
```{{exec}}

* You can also scan a specific file

```bash
vet scan -M requirements.txt
```{{exec}}

* You can also scan a directory letting `vet` auto-detect the files to scan

```bash
vet scan -D ./src
```{{exec}}

* You can also scan a GitHub repository

```bash
vet scan --github https://github.com/safedep/demo-client-python
```{{exec}}

