# Phase 16D–16H source audit

The researcher supplied source CSVs and charts for occupation-specific metropolitan growth, four-occupation annual series, annual metro changes, baseline-size sensitivity and original title-comparability checks. These source attachments were evaluated in the current session. **The source CSV and PNG files themselves have not yet been committed to GitHub.**

## Numerical checks passed

- `phase16d_metro_employment_changes.csv`: 2,120 metro-occupation endpoint records, 10 occupations × 212 metros. Employment difference matches `employment_2025 - employment_2021` for every record; percentage change matches the employment ratio within numerical precision.
- `phase16d_occupational_robustness.csv`: 10 occupations; both the occupation-level aggregate employment growth and median metropolitan growth independently reconstructed from the 2,120 detailed rows.
- `phase16e_annual_changes.csv`: 20 occupation-year rows; 4 occupations × 5 years. The 2025 employment indices are 142.764499 (project management), 136.713046 (training and development), 108.452180 (accountants), and 74.710567 (loan officers). They match the endpoint analysis.
- `phase16f_annual_metro_changes.csv`: 3,392 occupation-metro-year transition records. Each annual percentage change matches the reported employment ratio; 82 changes exceed 50% in absolute value, including large percentage changes from small baselines.
- `phase16g_baseline_size_sensitivity.csv`: 40 rows; 10 occupations × 4 restrictions. All aggregate-growth estimates reconstruct from the respective `baseline_employment` and `ending_employment` fields.
- `phase16h_title_consistency.csv`: four occupations; no reported title changes in the five-year period.

## Figure decisions

| Figure | Decision | Reason |
|---|---|---|
| `phase16c_top10_employment(1).png` | Suitable as primary employment illustration | Matches ten-occupation endpoint results |
| `phase16d_aggregate_vs_median(1).png` | Suitable supplement | Two clearly different descriptive growth statistics verified |
| `phase16e_employment_trends(1).png` | Suitable supplement after correcting outdated methodological-review caption | Four endpoint indices checked, intermediate values supplied |
| `phase16f_annual_diagnostics(1).png` | Suitable diagnostics supplement after visual/plot-code check | Underlying 3,392 transition rows available; boxplot construction not independently rerun |
| `phase16g_baseline_size_sensitivity(2).png` | Suitable supplementary sensitivity figure | All tabulated aggregate percentage changes reproduced |

## Limitations and later source checks

- The original Phase 16H `definition_review_register.csv` labels occupation-definition review **pending**; title stability alone is not definition stability. A later Phase 16M audit reportedly matched full BLS definitions for four selected occupations, and any final paper should distinguish those checks.
- Annual OEWS estimates are survey-based, constructed using overlapping panels, and cannot be interpreted as independent annual census counts.
- The 212 shared metropolitan codes form a county-membership-stable and complete-case sample; results do not represent the entire national labor market.
- No chart demonstrates AI caused observed changes in jobs or wages.
- The uploaded CSV values were checked within the session, but this is not an independent external replication nor a complete rerun of the original data-processing pipeline.

**Repository status:** Documentation updated. Exact underlying source attachments should be added after verifying public-release permission and technical file transfer.
