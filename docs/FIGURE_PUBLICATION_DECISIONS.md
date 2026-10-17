# Phase 16 visual acceptance decision

**Review basis:** figures supplied in the conversation, checked against previously reproduced Phase 17S–17Y occupational results where matching numerical outputs are available. This is **not** a complete figure-code/underlying-data audit. No image binaries have been committed to the public repository.

## Approved for accurate reporting with stated scope
- `phase16c_top10_employment.png`: **main figure candidate**. Ten bars match the direction and approximate magnitude of the independently recalculated 2021–2025 changes in 212 common metros; precise percentages are in [primary results CSV](../results/primary_occupation_changes_2021_2025.csv).
- `phase16a_occupation_coverage.png`: **sample-coverage supplement**. Displays 2021–2025 complete-case metro counts within 282 county-stable metros, not 2021/2025-only expanded endpoint samples.

## Conditional supplementary figures, not fully validated
- `phase16e_employment_trends.png`: four time-series directions and endpoints align with principal employment results; full intermediate-year values and outdated caption remain to be checked.
- `phase16g_baseline_size_sensitivity.png`: threshold directions align with prior Phase 16 sensitivities, but the full intermediate threshold results must be reconciled.
- `phase16d_aggregate_vs_median.png`: compare raw plot points to exact `median_metro_growth_pct` fields before release.
- `phase16f_annual_diagnostics.png`: requires original annual metro change data and plot-source audit.

## Exclusions
- `phase16g_baseline_size_sensitivity(1).png`: duplicate.
- Older `phase15b`/ `phase15c`/ `phase15d`/ `phase15g` plots: historical exploratory analysis and/or geography caveats superseded by the Phase 15–17 county-composition audit.
- Do not treat the five 100%-bar accounting tests as verified autonomous first-attempt success.

## Remaining manuscript visual materials
Current manuscript chart: employment vs real-wage changes for ten occupations (Phase 17K).
Other key manuscript exhibits: sample-selection flow (282 -> 212); transparent synthetic benchmark record and provenance status; expanded geographic sample comparison (Phase 17W); contemporaneous vs fixed-2021 wage weights (Phase 17X), including the −0.30% to +0.73% market-research sign reversal.

**Need source files:** exact Phase 17K/17W/17X PNGs and plotting data (or R scripts) if the final Word figure set is to be independently verified and uploaded; the image files supplied so far do not include those original final-phase PNGs.

**Do not assert the uploaded historic figures were uploaded to GitHub:** this is an editorial register only. Figures remain available in the conversation and can be uploaded once binary file transfer is supported or the user commits the vetted set.
