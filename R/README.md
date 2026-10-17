# R code status

The supplied `AI TASK PERFORMANCE.R` is a **21,627-line historical research-session script** with repeated phase blocks, multiple redefinitions of `root` using machine-specific Windows paths, and interim diagnostic/scoring code. It has not been committed wholesale as a reproducible script or run end-to-end.

The `phase18_public_validation.R` script in this directory is a **new portable, minimal consistency check**, not a replacement for or a complete reconstruction of the historical workflow.

## How to run the portable check
1. Install packages `readr` and `dplyr`.
2. Supply the researcher's exact `phase17y_consolidated_results.csv` and `phase17j_combined_total.csv` files (not yet published here).
3. From R: `source("R/phase18_public_validation.R")`. Select the two files when prompted.
4. The script verifies expected rows and reported directional counts without altering either file.

For complete public reproducibility, extract and review individual source-reconciliation, sample-selection, wage-aggregation, and sensitivity phases, remove absolute paths, freeze dependencies, document BLS/O*NET download versions, and test a clean environment.
