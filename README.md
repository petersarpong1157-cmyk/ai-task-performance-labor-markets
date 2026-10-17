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

## Repository status

This public repository currently contains research documentation. **The complete R scripts, underlying data, response files, validated analytical CSV outputs, and formatted manuscript are not yet committed here.** Do not interpret this repository as a fully runnable reproduction package until those materials are reviewed and uploaded.

- [Evidence and limitations](docs/EVIDENCE_AND_LIMITATIONS.md)
- [Reproducibility plan](docs/REPRODUCIBILITY.md)
- [Source and citation register](docs/SOURCES.md)

## Proposed layout

```text
README.md
docs/
  EVIDENCE_AND_LIMITATIONS.md
  REPRODUCIBILITY.md
  SOURCES.md
R/            # to be added after exact scripts are supplied and checked
results/      # to be added after outputs are supplied and checked
figures/      # to be added after figures are supplied and checked
manuscript/   # to be added after explicit review for public release
```

## Research integrity and AI assistance

ChatGPT assisted with research planning, R code development and debugging, statistical interpretation, literature identification, writing, and GitHub documentation. The researcher is responsible for checking all analyses, claims, citations, and materials. No independent occupational expert review or AI-generated causal effect is claimed. Full model and test metadata are not available for the saved benchmark set.

## Data sources

BLS OEWS: https://www.bls.gov/oes/  
BLS CPI: https://www.bls.gov/cpi/  
O*NET: https://www.onetcenter.org/database.html

**Status:** working research documentation; not submission-ready.

## Manuscript evidence and generated figures

For the structured figure-and-table source map, precise descriptive captions, required disclosures, and outstanding audit work, see [Manuscript Evidence Package](docs/MANUSCRIPT_EVIDENCE_PACKAGE.md).

The [successful R workflow](https://github.com/petersarpong1157-cmyk/ai-task-performance-labor-markets/actions/runs/39034621104) generates a primary publication figure (SVG and PDF) and an occupational results CSV as a downloadable **GitHub Actions artifact**. This generated output is not automatically committed into the repository tree. Raw BLS and O*NET archive execution remains pending.

## Working manuscript draft

Read [the full working manuscript](manuscript/WORKING_MANUSCRIPT.md), including the abstract, methods, primary results table, sensitivity analysis, limitations, and author-confirmation items. This is **not yet a journal-ready submission**: original-source executions, bibliography verification, and final author declarations are outstanding.
