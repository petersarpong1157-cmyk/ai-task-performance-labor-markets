# Raw BLS source-level verification

A source-to-processed verification script is available: [`R/reconcile_raw_oews.R`](../R/reconcile_raw_oews.R).

## Requirements

- Install R and `readxl`: `install.packages("readxl")`.
- Obtain the official May OEWS archives `oesm21all.zip`, `oesm22all.zip`, `oesm23all.zip`, `oesm24all.zip`, `oesm25all.zip` from the BLS [OEWS data page](https://www.bls.gov/oes/tables.htm). Keep the files unchanged in a local directory. No original BLS ZIP files are distributed in this repository.
- Run from the **repository root**, passing the local directory:

```sh
Rscript R/reconcile_raw_oews.R "/path/to/local/BLS/archive_directory"
```

The script extracts each year's `all_data_M_YYYY.xlsx` temporarily, selects 10 detailed occupational codes × 212 published metro codes with all-industry code `000000` and all-ownership code `1235`, recomputes total employment and employment-weighted mean wages, and checks the 50 occupation-year aggregates against the **actual original** `phase16c_matched_annual.csv` now in `data/processed/`.

The exact original 212 metropolitan IDs are now committed as `data/processed/phase16b_common_10_metros.csv`.

## Verification scope

- **PASSED in the researcher's local RStudio session on 17 October 2026:** The original 2021–2025 archived workbooks were reconciled, with **50/50 employment and 50/50 weighted-wage occupation-year matches** and exit status 0. [The complete 50-row CSV](../results/raw_bls_reconciliation.csv) and [execution documentation](RAW_BLS_VERIFICATION_RESULT.md) are committed. GitHub Actions separately tests the processed-data reconstruction; it does **not** run the raw archives.
- This is a successful author-run source reconciliation, **not an independent external rerun**.
- Does not independently recreate the 282 stable county-membership metro selection, verify six remaining full occupational definitions, or identify AI causal effects.
- Requires archive downloading and sufficient local RAM/disk. No private accounting/HR/market-research reference answers are necessary.

The script stops on suppressed values, missing source rows, or differences, and writes detailed results to `results/reproduced/raw_bls_reconciliation.csv` when it can proceed.
