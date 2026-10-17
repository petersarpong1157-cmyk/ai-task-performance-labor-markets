# Phase 16A–16C data audit (uploaded CSVs)

The researcher supplied 12 CSV files and a Phase 16A coverage PNG. **This audit verifies their numerical consistency; the entire original binary/CSV collection has not yet been committed to GitHub.**

## Validated sample counts

| Measure | Count |
|---|---:|
| Occupations in coverage panel | 32 |
| Stable metropolitan codes | 282 |
| Source-panel records across 32 occupations | 28,922 |
| Records with both employment and mean wage present | 28,535 |
| Records with missing employment | 225 |
| Records with missing mean wage | 162 |
| Occupations with at least 100 fully observed five-year metros | 20 |
| Occupations with 50–99 | 8 |
| Occupations with 1–49 | 3 |
| Occupations with zero | 1 |
| Primary common sample, 10 occupations | 212 metro codes |
| Alternative common sample, 20 occupations | 46 metro codes |
| Alternative 20-occupation annual panel | 4,600 records |

The `phase16c_matched_endpoints.csv` file has 10 rows for the 212-metro primary group and 20 rows for the 46-metro alternative group. **All ten** primary employment and real-wage endpoint changes agree with the earlier Phase 17T reconstruction.

## Coverage chart

The supplied `phase16a_occupation_coverage(1).png` plots complete employment-and-wage coverage within **282 county-composition-stable metros**. Ten primary occupations have coverage ranging from 260 to 282 full-five-year metros. The common 212-metro sample is their **intersection**, not a statement that every individual occupation has only 212 available metros.

This is separate from the later Phase 17W **paired 2021/2025 endpoint** samples (266–282), for which five complete annual observations are not required.

## Files supplied

- `phase16a_coverage_summary.csv`
- `phase16a_metro_completeness.csv`
- `phase16a_occupation_coverage.csv`
- `phase16a_overall_coverage.csv`
- `phase16b_common_10_metros.csv`
- `phase16b_common_20_metros.csv`
- `phase16b_common_20_panel.csv`
- `phase16b_occupation_samples.csv`
- `phase16b_own_sample_annual.csv`
- `phase16b_own_sample_endpoints.csv`
- `phase16c_matched_annual.csv`
- `phase16c_matched_endpoints.csv`

**Scope:** These are source-research outputs checked in the current workflow. They are descriptive BLS estimates; no causal AI effect is inferred. Full independent code execution and source-data traceability remain distinct tasks.

**Publication status:** Only this audit note is committed by this update. Upload raw attachment files when the repository's binary/file publishing workflow is available and ensure CSV paths, hashes, and source citations are preserved.
