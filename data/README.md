# Processed inputs for descriptive-output reproduction

These **five original user-uploaded CSVs have now been committed**, unchanged in data content, under `data/processed/`:

- `phase16c_matched_annual.csv`
- `table_1_primary_occupational_results.csv`
- `phase17w_geographic_sensitivity.csv`
- `phase17x_annual_weighted_wages.csv`
- `phase17x_weight_sensitivity.csv`

From the repository root, run `Rscript R/reproduce_descriptive_results.R`. The script uses **base R only**, checks the ten primary employment and wage results plus the two sample sensitivities, and generates `results/reproduced/checked_occupational_results.csv`.

The numerical formulas were also cross-checked from these uploaded CSVs, with absolute employment and wage differences below 1e-6 percentage points. **R execution has not been confirmed in this environment**, so the end-to-end command should still be executed in RStudio or GitHub Actions before claiming a successful automated reproducibility test.

**Limits:** Processed-output reproduction is not raw BLS OEWS extraction, county-membership selection, source provenance or autonomous AI benchmark replication. Private synthetic reference answers are not included.
