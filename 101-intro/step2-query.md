## 🎯 Query the scan data using CEL filters

* Start by creating a local cache of scan data

`vet scan --transitive --json-dump-dir /tmp/vet-json`{{exec}}

* Query for critical severity vulnerabilities

`vet query --from /tmp/vet-json --filter 'vulns.critical.size() > 0'`{{exec}}

* Query for packages with high severity vulnerabilities

`vet query --from /tmp/vet-json --filter 'vulns.high.size() > 0'`{{exec}}

* Query for packages with no maintainer

`vet query --from /tmp/vet-json --filter 'scorecard.scores.Maintained == 0'`{{exec}}

* Query for packages by license

`vet query --from /tmp/vet-json --filter 'licenses.exists(p, p == "MIT")'`{{exec}}

* Query for packages by GitHub stars

`vet query --from /tmp/vet-json --filter 'projects.exists(p, (p.type == "GITHUB") && (p.stars < 10))'`{{exec}}


