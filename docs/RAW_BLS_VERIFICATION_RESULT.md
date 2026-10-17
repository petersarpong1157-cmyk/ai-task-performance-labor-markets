# Raw BLS numerical reconciliation — passed in researcher's RStudio session

**Run date:** 17 October 2026. **Environment:** Researcher's local Windows RStudio installation. **Source:** original `oesm21all.zip`–`oesm25all.zip` archives and the version of `R/reconcile_raw_oews.R` downloaded from this repository.

## Reported console evidence

```text
Read raw BLS OEWS 2021
Read raw BLS OEWS 2022
Read raw BLS OEWS 2023
Read raw BLS OEWS 2024
Read raw BLS OEWS 2025
Employment matches: 50 /50; wage matches: 50 /50
PASS: raw BLS source workbooks reproduce 50 occupation-year employment and weighted-wage aggregates.
This does NOT verify national representativeness, changing survey methodology, or AI causality.
Verification exit status: 0
```

**Assessment: PASSED, according to the researcher's submitted RStudio execution log.** The run compared 50 employment and 50 employment-weighted wage occupation-year aggregates from the raw BLS tables to committed processed outputs using ten occupations, 212 common metropolitan codes, and five annual releases.

This is **researcher-executed source reconciliation**, not an independent external replication or CI execution against the original large ZIP archives. The full, researcher-uploaded 50-row comparison has now been committed as [`results/raw_bls_reconciliation.csv`](../results/raw_bls_reconciliation.csv). It was read and separately checked for 50 unique occupation-year keys (10 each in 2021–2025), no missing entries, 50/50 TRUE employment flags and 50/50 TRUE wage flags, with **exact zero** maximum numerical discrepancies in the saved CSV. The original archive checksums and run environment/session information would further strengthen provenance.

**Not covered:** reproducibility of the county-membership sample selection, BLS survey/model changes, national representativeness, full occupational definition consistency for the six outstanding occupations, benchmark first-attempt provenance, or AI causal effects.
