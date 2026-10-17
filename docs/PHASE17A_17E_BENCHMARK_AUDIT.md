# Phase 17A–17E original accounting provenance and mapping audit

**Source:** Nine researcher-supplied CSV outputs from original local R audits. This note documents what their saved records support; it is not external verification. The CSV attachments themselves have not been committed to GitHub in this update.

## 17A inventory
- `phase17a_source_inventory.csv`: **20** accounting benchmark case records and **3** candidate O*NET task-evidence mappings. Source locations in the original register are Windows-local, not portable repository paths.

## 17B reviewer forms
- `phase17b_review_file_audit.csv`: **four** reviewer-form files (two neutral templates, two mapping templates), each with three rows.
- All four records report **reviewer identity, reviewer independence, and substantive review NOT verified**. Form existence and nonempty administrative cells cannot be treated as expert review.

## 17D preserved accounting output integrity
- `phase17d_file_integrity.csv`: 20/20 recorded response files found; 20/20 computed MD5 values match registered response hashes.
- `phase17d_numerical_summary.csv`: 20/20 saved numerical cases and 110/110 fields match the benchmark references.
- `phase17d_provenance_completeness.csv`: **0/20** documented values in each of the eight required provenance fields: model name, model version, timestamp, fresh conversation, reference withheld, first attempt verified, human intervention, and transcript saved.
- `phase17d_existing_audit_notes.csv` preserves two historical issues: `P002_BLIND_001` had a previously incorrect response identity; `ROBUST_012` previously had a file copied from `ROBUST_011`. The reported saved-file match cannot erase these issues.
- `phase17d_claim_boundaries.csv` explicitly rejects claims about independently verified first-attempt rate, model-specific performance, full occupational automation, causality, and external expert validation.

## 17E O*NET evidence standards and primary occupations
- `phase17e_evidence_standards.csv`: **3** candidate partial-activity links, **0** validated complete tasks, **0** independently reviewed complete tasks.
- `phase17e_labor_market_linkage.csv`: ten occupations in 212 common metros. **Only Accountants and Auditors** has two candidate partial-activity links; nine occupations have **no benchmark task evidence**, not verified zero AI capability/exposure.
- The third candidate mapping concerns Agents and Business Managers, which is outside the primary ten-occupation comparison.

## Permitted claim
> All 20 preserved accounting response files matched their recorded numerical references (110/110 fields) and the saved response hashes matched; provenance was incomplete and no complete occupational task was validated or independently expert-reviewed.

**Do not claim:** 100% autonomous first attempts, a specific model's success rate, the fraction of jobs AI can replace, an occupation-level exposure score, or AI-caused wage/employment shifts.

Later six-case HR and market research pilot is a separate group with 30/30 matching saved fields and its own incomplete provenance, not an additional O*NET task validation.

**Publication status:** Audit note only is committed here. The originals require public-release review (particularly absolute local file paths) and deliberate upload.