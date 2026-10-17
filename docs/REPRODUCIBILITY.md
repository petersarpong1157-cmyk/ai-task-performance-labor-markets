# Reproducibility status and requirements

**Current status:** source-reconciliation and numerical checks were reported from the researcher's local R workflow. This GitHub repository does not yet contain the scripts and source data needed to rerun them. Do not claim one-click reproducibility.

## Completed in the local workflow (as reported)
1. Archive inspection: May OEWS `all_data_M_2021.xlsx` through `all_data_M_2025.xlsx`, O*NET 31.0 `Task Statements.xlsx` and `Task Ratings.xlsx`.
2. Reconcile BLS all-industry/all-ownership metropolitan occupational records against the processed panel, including missingness.
3. Verify 282 stable-county-membership metros; reconstruct 212 complete-case common metros for ten occupations across five years.
4. Recompute summed employment and employment-weighted annual mean wages, then apply CPI-U annual averages (2021–2025: 270.970, 292.655, 304.702, 313.689, 321.943).
5. Compare primary changes with occupation-specific 2021/2025 paired-endpoint samples and fixed 2021 metropolitan employment weights.
6. Score preserved benchmark CSV files against privately stored reference calculations; audit source hashes and missing metadata.

## Remaining before runnable public release
- Collect exact R source scripts, dependency information (`sessionInfo()` / package versions), and original source links/versions.
- Audit scripts for absolute paths, hard-coded confidential information, and dependency order; replace machine-specific paths with repository-relative paths.
- Include an executable pipeline and test expected outputs without inventing metadata or numerical results.
- Review what synthetic benchmark inputs and responses can be publicly released. **Do not publicly release private reference answers or any restricted material without explicit review.**
- Verify the manuscript and figure files and confirm author approval before uploading to this **public** repository.
- Document original source licenses, reuse conditions, and provenance and select a license intentionally.

## Suggested structure (not yet populated)
```text
R/
data/README.md
results/
figures/
manuscript/
docs/
```

Reproduced numerical values from an existing analysis workflow are not a substitute for independent reruns by an external analyst.
