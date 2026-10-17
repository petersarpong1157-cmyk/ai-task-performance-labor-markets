# R code and reproducibility

## Runnable candidate: processed-output reconstruction

`R/reproduce_descriptive_results.R` reads five exact uploaded CSVs now stored under `data/processed/`, checks primary employment and wage changes for 10 occupations, geographic sensitivity directions and fixed-2021 wage weights, and writes a derived results CSV.

Run from repository root:

```bash
Rscript R/reproduce_descriptive_results.R
```

**Dependencies:** Base R. Calculation agreement was also checked independently from uploaded CSV values, but the R script has not yet been run by this environment.

## Historical R analysis source

The separately uploaded `AI TASK PERFORMANCE.R` is an approximately 21,627-line historical research-session script with multiple phases and Windows absolute paths. It is **not** committed or claimed to be a clean pipeline.

Remaining work before source-to-output reproducibility: extract only final source processing and audit phases, refactor paths, document exact R packages and versions, supply raw source retrieval instructions and verify full pipeline in clean R.

No code in this repository estimates causal AI effects or a validated full-task AI exposure index.
