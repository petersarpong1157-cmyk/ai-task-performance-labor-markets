# AI Task Performance and Occupational Labor Markets

**Working research project — not a peer-reviewed publication or a causal AI-employment study.**

This project examines three **separate** forms of evidence: (1) agreement of saved AI-generated responses with reference answers for narrowly specified synthetic data tasks, (2) candidate overlap between selected benchmark activities and O*NET task statements, and (3) descriptive occupational employment and real mean-wage trends in U.S. metropolitan areas during 2021–2025.

## Findings from the researcher's recorded R analyses

| Component | Recorded result | Important qualification |
|---|---:|---|
| Synthetic benchmark responses | 26/26 saved responses matched references | First-attempt status, model metadata, and intervention provenance are incomplete |
| Numerical benchmark fields | 140/140 matched | Narrow synthetic calculations, not full professional task competence |
| Candidate O*NET task links | 3 | Partial activity overlap only; no complete task validated or independently reviewed |
| Primary occupational sample | 10 occupations, 212 metros, 2021–2025 | Complete-case sample from 282 metros with stable county membership |
| Employment-change range | −25.29% to +42.76% | Descriptive changes; not attributed to AI |
| Real mean-wage changes | 9/10 occupations declined under annual employment weights | 8/10 declined under fixed 2021 weights |
| Geographic sensitivity | 10/10 employment and wage directions unchanged | Expanded occupation-specific paired-endpoint samples, 266–282 metros |
| Fixed-weight wage sensitivity | 9/10 wage directions unchanged | Market Research Analysts and Marketing Specialists: −0.30% annual weights; +0.73% fixed weights |

The occupational analysis used BLS Occupational Employment and Wage Statistics (OEWS) metropolitan estimates, employment-weighted annual mean wages, and U.S. annual-average CPI-U. The original BLS values, metropolitan sample selection, and primary descriptive estimates were reconciled and recalculated within the researcher's R workflow. This is **not** independent replication by an outside team.

## Scope and cautions

- The 26 saved outputs should **not** be described as 26 independently verified first-attempt autonomous successes.
- The accounting benchmark has candidate partial links to O*NET task IDs **21516** and **21514** (Accountants and Auditors, 13-2011.00), and **12874** (Agents and Business Managers, 13-1011.00). These are not validated full-task completions.
- There is **no validated occupation-wide AI exposure index** and **no causal estimate** of AI's effect on employment or wages.
- The use of O*NET 31.0 task descriptions (2026) alongside OEWS data (2021–2025) is retrospective.
- Differences in OEWS methodology and metropolitan delineations, and missing observations, remain relevant limitations.

## Repository status and reproducibility

This repository contains maintained R scripts, processed OEWS results, original-source verification records, research figures, an evidence-bounded working manuscript, and supporting documentation. It is a **versioned descriptive research archive**, not a peer-reviewed paper or an independently validated AI-automation study.

- [Processed-data reconstruction](R/reproduce_descriptive_results.R) and [figure generator](R/create_primary_figures.R) passed [GitHub Actions validation](https://github.com/petersarpong1157-cmyk/ai-task-performance-labor-markets/actions/runs/39034621104).
- The author ran [raw BLS reconciliation](docs/RAW_BLS_VERIFICATION_RESULT.md) against the five original 2021–2025 OEWS ZIP archives: **50/50 employment and 50/50 employment-weighted mean-wage aggregates matched**, with exit status 0. See [the full comparison CSV](results/raw_bls_reconciliation.csv). This is researcher-executed verification, not external independent replication.
- [Three original O*NET 31.0 task statements](docs/ONET_DIRECT_SOURCE_VERIFICATION.md) were verified against the archived source workbook. Their proposed AI benchmark mappings remain candidate partial-activity links; **zero full occupational tasks** have been validated.
- [Research evidence and limitations](docs/EVIDENCE_AND_LIMITATIONS.md), [reproducibility documentation](docs/REPRODUCIBILITY.md), and [source records](docs/SOURCES.md) describe the remaining boundaries.

## Published archival release

**Version:** `v3.4.7`  
**Zenodo DOI:** [10.5281/zenodo.23437477](https://doi.org/10.5281/zenodo.23437477)  
**Author:** Peter Sarpong, Independent Researcher, Gaithersburg, Maryland, USA  
**Correspondence:** peter.sarpong1157@gmail.com

The DOI identifies the published **v3.4.7 snapshot**, not later changes to the GitHub `main` branch. Subsequent updates require a separately versioned release if they are to be archived and cited on Zenodo.

## Research integrity and AI assistance

ChatGPT assisted with research planning, R code development and debugging, statistical interpretation, literature identification, writing, and GitHub documentation. The researcher is responsible for checking all analyses, claims, citations, and materials. No independent occupational expert review or AI-generated causal effect is claimed. Full model and test metadata are not available for the saved benchmark set.

## Data sources

BLS OEWS: https://www.bls.gov/oes/  
BLS CPI: https://www.bls.gov/cpi/  
O*NET: https://www.onetcenter.org/database.html

**Status:** Public versioned research materials and a working manuscript are available. Journal submission remains subject to final editorial/reference review and journal requirements; the Zenodo archive is not evidence of peer review.

## Manuscript evidence and generated figures

For the structured figure-and-table source map, precise descriptive captions, required disclosures, and outstanding audit work, see [Manuscript Evidence Package](docs/MANUSCRIPT_EVIDENCE_PACKAGE.md).

The [successful R workflow](https://github.com/petersarpong1157-cmyk/ai-task-performance-labor-markets/actions/runs/39034621104) generates a primary publication figure (SVG and PDF) and an occupational results CSV as a downloadable **GitHub Actions artifact**. This generated output is not automatically committed into the repository tree. Raw BLS source reconciliation has passed in the author's RStudio run (50/50 employment and 50/50 wage aggregates), with [detailed CSV evidence](results/raw_bls_reconciliation.csv). Three original O*NET source statements were also checked directly; the candidate task mappings have not been independently validated.

## Working manuscript draft

Read [the repository working manuscript](manuscript/WORKING_MANUSCRIPT.md), including the abstract, methods, primary results table, sensitivity analysis, limitations, and author-confirmation items. The author has confirmed [affiliation, correspondence, funding, competing interests, and AI-use declarations](docs/FINAL_AUTHOR_DECLARATIONS_2026-10-17.md). This remains a working manuscript requiring final bibliography/figure review and journal-specific formatting; the Zenodo release is already published.
