## 🎯 Basic Usage

* Run a scan using `vet`

`vet scan`{{exec}}

* Automatically resolve transitive dependencies

`vet scan --transitive`{{exec}}

* You can also scan a specific file

`vet scan -M requirements.txt`{{exec}}

* You can also scan a directory letting `vet` auto-detect the files to scan

`vet scan -D ./src`{{exec}}

* You can also scan a GitHub repository

`vet scan --github https://github.com/safedep/demo-client-python`{{exec}}

