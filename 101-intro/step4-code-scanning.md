## 🎯 Code Scanning

`vet` supports code scanning to collect dependency usage evidence in code.
This helps in prioritizing vulnerabilities that actually affect the codebase.

* Start by scanning a codebase and create a database of code artifacts

`vet code scan --db code.db`{{exec}}

> `vet code scan` command parses the codebase and stores the results in a `sqlite` database.
> This database is queried by `vet scan` command to collect usage evidence.

* Run `vet` scan with code scanning enabled to correlate packages with code usage evidence

`vet scan --code code.db`{{exec}}