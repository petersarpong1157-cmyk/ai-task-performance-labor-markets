# Processed inputs required for the R reproducibility check

Copy **exact original research outputs** from your Windows research folder to this directory before running:

```text
data/processed/
  phase16c_matched_annual.csv
  table_1_primary_occupational_results.csv
  phase17w_geographic_sensitivity.csv
  phase17x_annual_weighted_wages.csv
  phase17x_weight_sensitivity.csv
```

Do not change their values. These are the previously uploaded files, not files invented by the GitHub project. The current repository does not yet have this full input set.

At repository root run:

```bash
Rscript R/reproduce_descriptive_results.R
```

Output: `results/reproduced/checked_occupational_results.csv`.

The script checks calculations from **processed source outputs**, including 10 primary employment and wage changes and sample sensitivities. It does **not** recompute the raw BLS OEWS extracts, audit county membership, validate complete occupational AI tasks, or demonstrate AI causality. It has not been executed in this GitHub environment yet.
