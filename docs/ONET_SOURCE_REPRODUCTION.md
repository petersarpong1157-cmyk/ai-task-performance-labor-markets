# Original O*NET 31.0 source verification

The public repository includes `R/verify_onet_task_sources.R` to compare the three candidate mapped task statements with source text in the original **O*NET database 31.0** archive.

## Run locally

1. Obtain the original `db_31_0_excel.zip` archive from the O*NET Resource Center.
2. Install R package `readxl` if needed.
3. From the repository root run:

```sh
Rscript R/verify_onet_task_sources.R "/path/to/db_31_0_excel.zip"
```

The script extracts the Task Statements workbook to a temporary directory and checks exact O*NET-SOC codes, task IDs, normalized task text, Core/Supplemental task types, dates, and Domain Source values for:
- 13-2011.00, task 21516 — 2026 Occupational Expert, Core
- 13-2011.00, task 21514 — 2026 Occupational Expert, Core
- 13-1011.00, task 12874 — 2020 Incumbent, Supplemental

**This is a source identity check only.** It does not establish that an occupational expert reviewed the researcher's proposed mapping, nor does it validate full-task AI performance.

**Execution status:** Script is published and fetch-verified, but has **not been run** on the O*NET archive in a clean environment by GitHub Actions because that original ZIP is not in this repository.

Raw archives and private benchmark references are excluded by `.gitignore`. Never publish a hidden private reference merely because a filename is not covered by an ignore rule.
