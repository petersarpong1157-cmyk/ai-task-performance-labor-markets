# Manuscript evidence and figure package — October 2026

**Status:** manuscript-ready guide to the **descriptive** results, not a finished journal submission or independent raw-source replication.

## Publication-ready framing

**Suggested working title:** *Saved AI Benchmark Calculations, O*NET Task-Statement Overlap, and U.S. Metropolitan Occupational Employment and Wages: Three Distinct Evidence Streams*

**Research purpose:** Describe what is supported separately by (i) saved synthetic AI benchmark answers, (ii) researcher-proposed O*NET partial-activity links, and (iii) matched metropolitan occupational employment and CPI-U-adjusted mean-wage changes. Do not join these into an AI-exposure ranking or causal explanation of labor-market change.

## Proposed figure and table placement

| Manuscript component | Source of truth | Appropriate interpretation |
|---|---|---|
| Main Figure 1 — Employment and real mean-wage changes | `data/processed/table_1_primary_occupational_results.csv`; `R/create_primary_figures.R` | Ten occupations, 212 common county-stable metros, 2021–2025 |
| Table 1 — Primary descriptive occupation results | `data/processed/table_1_primary_occupational_results.csv` | Percent changes and metro dispersion; survey estimates |
| Table 2 — Geographic sample sensitivity | `data/processed/phase17w_geographic_sensitivity.csv` | Occupation-specific paired endpoints (266–282 metros) compared with primary 212; do not confuse with earlier 46-metro 20-occupation sensitivity |
| Supplement Figure S1 — Weighting sensitivity | `figures/phase17x_fixed_weight_sensitivity.svg`; `data/processed/phase17x_weight_sensitivity.csv` | Fixed 2021 employment weights compared with changing annual weights; nine directions agree |
| Supplement Figures S2–S3 — Geographic sensitivity | `figures/phase17w_employment_geographic_sensitivity.svg`, `figures/phase17w_real_wage_geographic_sensitivity.svg` | Two descriptive endpoint sensitivity plots |
| Supplement Table S1 — Synthetic benchmark evidence | `results/table_17k_benchmark.csv` and `docs/PHASE17A_17E_BENCHMARK_AUDIT.md` | 20/20 saved accounting responses (110/110 fields) + six saved pilots (30/30 fields); incomplete provenance |
| Supplement Table S2 — Candidate task statements | `docs/PHASE17A_17E_BENCHMARK_AUDIT.md`; `docs/ONET_SOURCE_REPRODUCTION.md` | Three candidate partial-activity links; **zero** verified complete tasks or external expert reviews |

## Figure captions for journal submission

**Figure 1. Employment and inflation-adjusted mean-wage changes across ten occupational groups, 2021–2025.** Employment is summed across the same 212 metropolitan areas for each occupation and year. Occupational mean wages are aggregated using reported employment weights and deflated by the annual national CPI-U. Values are percent changes between 2021 and 2025; they are descriptive, not estimates of the effect of AI.

**Figure S1. Sensitivity of real mean-wage changes to employment weighting.** Annual employment weights and fixed 2021 weights produce the same sign for nine of ten occupations. Market Research Analysts and Marketing Specialists shift from approximately −0.30% to +0.73%; the difference reflects the weighting specification, not evidence of an AI effect.

**Figures S2–S3. Geographic sample sensitivity.** Employment and wage changes in the ten-occupation, 212-metro common sample are compared with expanded occupation-specific paired-endpoint samples. All ten employment and wage change directions remain consistent, but percentage magnitudes differ.

## Minimal verifiable commands

From repository root:

```sh
Rscript R/test_script_syntax.R
Rscript R/test_source_archive_helpers.R
Rscript R/reproduce_descriptive_results.R
Rscript R/create_primary_figures.R
```

The preceding commands were successfully executed in GitHub Actions; [successful run](https://github.com/petersarpong1157-cmyk/ai-task-performance-labor-markets/actions/runs/39034621104). Download its `occupational-reconstruction` artifact for a generated CSV, SVG, and PDF. Generated files are **workflow artifacts** rather than automatically committed files under `figures/generated/`.

Raw source checks are additional manual steps and **not yet verified by this automated workflow**:

```sh
Rscript R/reconcile_raw_oews.R "/path/to/BLS/zips"
Rscript R/verify_onet_task_sources.R "/path/to/db_31_0_excel.zip"
```

## Journal-relevant limitations

- The 212-metro sample is not a national estimate or random sample of U.S. labor markets.
- OEWS estimates use overlapping survey panels; survey procedures and metro delineation can change across releases.
- Four of ten occupations' source description text has been compared over five years; six need comparable verification.
- The O*NET source version postdates the 2021–2025 labor period, limiting temporal interpretation.
- Saved AI benchmark answers lack verified first-attempt/model/intervention history and do not demonstrate end-to-end job task completion.
- No inference is supported that AI caused observed wage or employment changes; no employer-level adoption or exposure metric has been validated.

## Completion checklist

- [x] Commit exact processed primary inputs and portable reconstruction R code.
- [x] Run automated processed-data calculation and publication figure generation successfully.
- [x] Preserve source-audit qualifications and candidate task-link boundaries.
- [ ] Execute raw BLS and O*NET comparison scripts against original ZIPs and archive transparent logs.
- [ ] Review all generated figure layouts visually and apply journal production sizing.
- [ ] Link a final manuscript document, independently checked citations, author declarations, and all exact source data/provenance files.
- [ ] Obtain separate real expert review if claiming task-level validation.

This guide is an **organization of existing verified records**, not a claim that the complete paper or underlying AI experiment is independently replicated.
