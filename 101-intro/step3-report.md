## 🎯 Generate Reports

* Generate a report in JSON format

`vet query --from /tmp/vet-json --report-json report.json`{{exec}}

* Generate a report in CSV format

**Note:** CSV reports require a policy to report violations

`vet query --from /tmp/vet-json --filter 'vulns.critical.size() > 0 || vulns.high.size() > 0' --report-csv report.csv`{{exec}}

### 📊 Report Visualization

* Navigate to [https://vetpkg.dev/vr](https://vetpkg.dev/vr)
* Upload the `report.json` file and visualize the report
