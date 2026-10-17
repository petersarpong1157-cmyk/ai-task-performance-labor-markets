# Saved AI Benchmark Calculations, O*NET Task-Statement Overlap, and U.S. Metropolitan Occupational Employment and Wages: Three Distinct Evidence Streams

**Working manuscript — revised 17 October 2026**  
**Author:** Peter Sarpong (Independent Researcher, Gaithersburg, Maryland, USA)  
**Correspondence:** peter.sarpong1157@gmail.com  
**Status:** Research draft, not peer reviewed. The researcher-executed raw BLS numerical reconciliation passed (50/50 employment and 50/50 wages). Final reference, figure, and journal-specific editorial review remain outstanding.

## Abstract

This descriptive study separates evidence on saved responses to synthetic AI data-analysis benchmarks, researcher-proposed mappings of benchmark activities to O*NET task statements, and occupation-level employment and real mean-wage changes across metropolitan areas in the United States from 2021 to 2025. The saved benchmark records include 20 accounting cases and six human-resources or market-research cases; all 26 preserved responses matched their recorded numerical references across 140 evaluated fields. However, essential metadata for first attempts, model identity, transcripts, and human intervention were incomplete, preventing a verified estimate of autonomous AI performance. Three O*NET task statements were identified as candidate **partial-activity** links; none was validated as a complete AI-executable occupational task or independently expert-reviewed. The labor-market analysis uses ten business-related occupations observed in the same 212 county-composition-stable metropolitan areas across five annual BLS Occupational Employment and Wage Statistics (OEWS) releases. Employment changes ranged from −25.29% among Loan Officers to +42.76% among Project Management Specialists. Employment-weighted, CPI-U-adjusted mean wages declined in nine of ten occupations. Directions of all ten employment and wage changes remained unchanged in expanded occupation-specific paired-endpoint metropolitan samples, although one real-wage sign changed under fixed 2021 rather than time-varying employment weights. These three evidence streams answer different questions. **No causal effect of AI on wages or employment is identified.**

**Keywords (provisional):** occupational employment; real wages; synthetic benchmarks; task mapping; O*NET; OEWS; reproducibility; descriptive sensitivity.

## 1. Introduction

AI benchmark performance, occupational task descriptions, and observed labor-market changes are often discussed together. Yet a successful narrow calculation does not necessarily establish competence in an occupational task, and neither one establishes why a profession's employment or wages changed. The methodological purpose of this study is to make those inferential boundaries explicit.

The first evidence stream audits preserved responses to narrow synthetic data tasks against their reference results. The second examines whether selected benchmark activities plausibly overlap with specific O*NET task statements. The third describes employment and inflation-adjusted wage differences between 2021 and 2025 in a geographically matched set of metropolitan occupation estimates. The study does **not** create or validate an occupation-level AI exposure index, quantify workplace AI adoption, or estimate a counterfactual without AI.

The central research questions are: (1) what agreement with references is documented in the saved benchmark records, given missing experimental provenance; (2) what level of O*NET task linkage is supportable; and (3) how do descriptive metropolitan occupational employment and wage changes vary across the selected occupations and robustness specifications?

## 2. Related literature and contribution

Task-based frameworks distinguish the automation of particular activities from the replacement of an occupation as a whole. Acemoglu and Restrepo (2019) describe both displacement of existing labor tasks and creation of new tasks, making a direct equation between technical task ability and changes in employment inappropriate. Research on large language models likewise distinguishes *potential exposure* to capabilities from actual adoption and realized workplace effects (Eloundou et al., 2023).

Experimental studies show why this distinction matters. Noy and Zhang (2023) examine generative AI assistance in selected professional writing tasks; Brynjolfsson, Li, and Raymond (2025) investigate generative AI deployment among customer-support workers. These designs can directly observe assisted activity or workplace implementation in settings unlike the saved synthetic calculation files examined here. Their empirical results must not be transported as estimates of occupational change in the selected BLS series.

An international task-based assessment by Gmyrek, Berg, and Bescond (2023) additionally distinguishes the potential to automate activities from the potential to augment workers. The present study does not estimate exposure indices or classify jobs as automatable. Instead, its contribution is a transparent **evidence-boundary and reproducibility exercise**: it separately reports verified saved-answer agreement, limited O*NET statement correspondence, and descriptive labor-market outcomes while documenting the conditions that block stronger inference.

The BLS OEWS survey design combines overlapping semiannual panels across three years (BLS, *OEWS Handbook of Methods*). Therefore, differences in reported annual occupational estimates should not be interpreted as independent census-like year-to-year changes. The manuscript's common-metro sample and source reconciliation improve traceability but do not remove this survey limitation.

## 3. Data and methods

### 3.1. Saved synthetic benchmark records

The archive covers 20 saved accounting benchmark responses encompassing 110 evaluated numerical fields and six additional human-resources/market-research responses encompassing 30 evaluated numerical fields. A preserved response was assessed against its associated numerical reference, and saved-file integrity checks were recorded for the accounting group. These are **post hoc checks on saved files**, not independently observed randomized first-attempt trials.

The original accounting audit reported that saved-response MD5 hashes agreed with the recorded inventory for all 20 cases. It also preserved historical file-identity/copy issues and recorded no complete metadata across eight provenance criteria for any of the 20 cases; corresponding first-attempt provenance remained incomplete for the six-case pilot. Accordingly, the numerator and denominator below refer to **retained numerically matching files**, not a success probability for a named AI model in an independently blinded test.

### 3.2. Candidate links to occupational task statements

Three candidate partial-activity links were registered using O*NET 31.0: Accountants and Auditors (13-2011.00), task IDs 21516 and 21514; and Agents and Business Managers (13-1011.00), task ID 12874. The last occupation is outside the ten-occupation primary labor sample. The links refer to possible overlaps in activity descriptions, not complete performance of the listed tasks. No complete task was validated and no independent expert review was documented. The O*NET version used also postdates the labor observations.

### 3.3. Occupational estimates and geographic matching

The labor-market source comprises annual May 2021–2025 BLS OEWS occupation-by-metropolitan estimates. The underlying geographic audit retained 282 metropolitan codes with consistent county-FIPS membership across the releases. A primary common balanced sample includes ten selected occupations, all with reported employment and mean wages in the **same 212 metropolitan areas in each of five years**. Thus the primary 10-occupation annual summary contains 50 occupation-year aggregates derived from 10,600 metro-occupation-year cells. This is a selected complete-case sample, not a nationally representative estimate.

Employment for occupation `o` in year `t` is the sum of published metro estimates `E_mot` over the fixed metro set `M`. Nominal mean wages are aggregated using the published metropolitan occupational employment estimates as weights:

```text
E_ot = sum_{m in M} E_mot

W_ot = sum_{m in M}(E_mot * W_mot) / sum_{m in M} E_mot

RealWageChange_o (%) =
  100 * [(W_o,2025 / CPI_2025) / (W_o,2021 / CPI_2021) - 1]

EmploymentChange_o (%) =
  100 * [E_o,2025 / E_o,2021 - 1]
```

The recorded national annual-average CPI-U series is 270.970 (2021), 292.655 (2022), 304.702 (2023), 313.689 (2024), and 321.943 (2025). Wage growth is therefore expressed in inflation-adjusted terms.

### 3.4. Sensitivity specifications

**Geographic sensitivity:** Each occupation is additionally summarized using all available published metros with paired employment and wage endpoints for 2021 and 2025 (266–282 metropolitan areas depending on occupation); these are **occupation-specific endpoint samples**, not identical to the primary five-year complete-case set. Employment- and wage-change signs are compared across samples.

**Weighting sensitivity:** The primary occupational wage aggregates use each year's own metro employment weights. A second specification holds metro employment weights at their 2021 levels, then compares deflated occupational wage changes. The sensitivity reveals whether changes in the geographic weighting mixture alter direction.

**Definition and survey qualifications:** Full published BLS occupational description text was compared for four selected occupations for 2021–2025; comparable checks for the other six remain open. Changes in survey inputs, NAICS classification, and metropolitan delineation across OEWS releases can still affect comparison, even when selected county membership is stable. Annual OEWS estimates share survey panels and are not independent annual censuses.

## 4. Results

### 4.1. Saved benchmark responses

All 20 preserved accounting responses matched their recorded references (110/110 numerical fields). The six additional preserved responses matched 30/30 fields. In total, 26/26 **saved responses** and 140/140 **saved numerical fields** matched. These figures cannot be interpreted as independently verified model-specific first-attempt performance because the required experimental provenance is missing. Likewise, the three O*NET links are candidate partial-activity correspondences rather than task-level validation.

### 4.2. Descriptive occupational changes

**Table 1. Primary matched metropolitan employment and real mean-wage changes, 2021–2025** (212 common metros for every occupation).

| Occupation | Employment change | Real mean-wage change |
|---|---:|---:|
| Project Management Specialists | +42.76% | −3.64% |
| Training and Development Specialists | +36.71% | −5.71% |
| Human Resources Specialists | +20.99% | −1.57% |
| Compliance Officers | +20.69% | −1.65% |
| Market Research Analysts and Marketing Specialists | +16.26% | −0.30% |
| Accountants and Auditors | +8.45% | −4.36% |
| Buyers and Purchasing Agents | +8.12% | −1.43% |
| Cost Estimators | +6.12% | −1.20% |
| Business Operations Specialists, All Other | +3.39% | +1.33% |
| Loan Officers | −25.29% | −8.57% |

Nine occupations registered higher estimated employment in the matched metros, whereas Loan Officers declined. Nine occupations showed declining real employment-weighted mean wages; Business Operations Specialists, All Other was the exception. Employment growth and real wage growth are not interchangeable measures, and their coexistence does not establish AI effects.

**Figure 1.** [Employment and real wage changes](../R/create_primary_figures.R). Generate the figure in SVG and PDF using `Rscript R/create_primary_figures.R`, or obtain it from the successful GitHub Actions artifact. Caption: *Descriptive 2021–2025 percentage changes for ten occupations within 212 common metropolitan areas. Real mean wages are employment weighted and CPI-U adjusted. No AI causal effect estimated.*

### 4.3. Geographic robustness

The expanded paired-endpoint metropolitan samples include 266–282 metros per occupation. All ten employment change directions and all ten real-wage change directions match those in the 212-metro primary sample. The greatest absolute employment percentage-point difference is approximately 1.77 (Market Research Analysts and Marketing Specialists); the greatest absolute real-wage difference is approximately 0.61 percentage points (same occupation). This directional stability does not remove measurement uncertainty, source-method changes, or selection limitations.

**Table 2.** Full precision geographic-sensitivity evidence is retained in [`data/processed/phase17w_geographic_sensitivity.csv`](../data/processed/phase17w_geographic_sensitivity.csv).

### 4.4. Fixed-weight robustness

Holding employment weights at their 2021 values preserves the direction of real mean-wage change for nine occupations. For Market Research Analysts and Marketing Specialists, annual-weight real wages decline by approximately 0.30%, while fixed-2021-weight real wages increase by approximately 0.73%, a difference of **1.03 percentage points**. This specification sensitivity makes the near-zero primary estimate especially sensitive to aggregation.

**Figure S1.** [Fixed-weight sensitivity](../figures/phase17x_fixed_weight_sensitivity.svg), with exact values in [`data/processed/phase17x_weight_sensitivity.csv`](../data/processed/phase17x_weight_sensitivity.csv).  
**Figures S2–S3.** [Employment geographic sensitivity](../figures/phase17w_employment_geographic_sensitivity.svg) and [real-wage geographic sensitivity](../figures/phase17w_real_wage_geographic_sensitivity.svg).

## 5. Discussion

The results reinforce a distinction between **saved answer agreement**, **task-description similarity**, and **labor-market outcomes**. High reference agreement on narrow, preserved synthetic calculations is informative about those stored records but cannot validate complete workplace responsibilities or unobserved first-attempt behavior. Candidate task links warrant further expert scrutiny before they can be interpreted as complete task matches. The descriptive occupational panel shows large variation in employment and generally negative CPI-U-adjusted average wage growth over 2021–2025, but does not identify mechanisms.

Two sensitivity results refine the descriptive interpretation. Broadening endpoint metros preserves change direction across the ten occupations, which is reassuring about sign sensitivity to the selected metropolitan sample. Conversely, fixed employment weights reverse the wage-change sign for one near-zero case, illustrating the influence of geographic weights. Neither exercise transforms cross-year associations into a causal design.

## 6. Limitations

First, model version, timing, first-attempt verification, transcript records, and human intervention were not adequately documented in the benchmark evidence. Second, task statements are not equivalent to validated complete occupational task performance, and expert review was not independently established. Third, the balanced 212-metro sample is selected and not nationally representative. Fourth, OEWS uses overlapping survey panels, and classification and metro definitions can change across years. Fifth, full BLS occupational definitions were source-compared for only four of the ten occupations; six require equivalent verification. Sixth, O*NET 31.0 is newer than the 2021–2025 labor period. Seventh, wages and employment are observed estimates, with no AI deployment indicator, causal control group, or credible AI-specific counterfactual.

## 7. Conclusion

Preserved synthetic outputs exhibited complete numerical agreement with the available saved reference records, but experimental provenance limits inference about autonomous model performance. Three candidate O*NET links establish no validated complete task. Across ten selected occupations and 212 common metropolitan areas, estimated employment changes ranged from −25.29% to +42.76%, while real mean wages declined in nine of ten occupations under changing annual employment weights. Geographic endpoint expansions preserved the direction of all twenty occupational employment and wage comparisons, whereas fixing wage weights changed the sign for one near-zero real-wage estimate. The defensible conclusion is **descriptive and bounded**: the evidence streams should not be conflated or used to attribute labor-market change to AI.

## Source, reproducibility and declarations

**Data sources:** U.S. Bureau of Labor Statistics, Occupational Employment and Wage Statistics May 2021–2025 original annual release tables; U.S. Bureau of Labor Statistics, annual-average CPI-U; O*NET Database 31.0, task statements; researcher-constructed synthetic benchmarks and preserved response audit records. Bibliographic detail, access dates and exact publication URLs require checking before journal submission.

**Code and processed outputs:** [GitHub repository](https://github.com/petersarpong1157-cmyk/ai-task-performance-labor-markets). The processed-data R reconstruction and automatically generated main figure passed GitHub Actions. The author executed the raw BLS source reconciliation in RStudio (2021–2025): **50/50 employment** and **50/50 employment-weighted wage aggregates matched**; the detailed [50-row comparison](../results/raw_bls_reconciliation.csv) is public. Three original O*NET task statement records were verified directly against the source workbook; this is not independent validation of the candidate task mappings. The Zenodo archival release is [v3.4.7 (DOI: 10.5281/zenodo.23437477)](https://doi.org/10.5281/zenodo.23437477), which represents a fixed historical snapshot.

**Ethics:** The labor analysis uses aggregated, published occupational estimates; the synthetic benchmarks use constructed records. No human-subject recruitment is documented in the research records summarized here. Formal journal ethics declarations must be checked against the completed project.

**Funding:** This research received no external funding.  
**Competing interests:** The author declares no known financial or non-financial competing interests.  
**Author contribution:** Peter Sarpong is the sole author and is responsible for research decisions, data analysis, interpretation, review and final approval.

**Generative AI use:** During preparation of this manuscript, OpenAI ChatGPT was used to support research planning, R code development and debugging, numerical verification, literature searches, manuscript drafting and language editing, and preparation of reproducibility documentation. The author was responsible for research decisions, data analysis, interpretation of findings, verification of results and final review. All conclusions and research content remain the author's responsibility.

**Selected references (publisher/institutional records documented in [the literature register](../docs/VERIFIED_LITERATURE_AND_SUBMISSION_GATES.md)):**

Acemoglu, D., & Restrepo, P. (2019). Automation and new tasks: How technology displaces and reinstates labor. *Journal of Economic Perspectives, 33*(2), 3–30. https://doi.org/10.1257/jep.33.2.3

Brynjolfsson, E., Li, D., & Raymond, L. R. (2025). Generative AI at work. *Quarterly Journal of Economics, 140*(2), 889–942. https://doi.org/10.1093/qje/qjae044

Eloundou, T., Manning, S., Mishkin, P., & Rock, D. (2023). *GPTs are GPTs: An early look at the labor market impact potential of large language models* [Preprint]. https://doi.org/10.48550/arXiv.2303.10130

Gmyrek, P., Berg, J., & Bescond, D. (2023). *Generative AI and jobs: A global analysis of potential effects on job quantity and quality* (ILO Working Paper 96). https://doi.org/10.54394/FHEM8239

Noy, S., & Zhang, W. (2023). Experimental evidence on the productivity effects of generative artificial intelligence. *Science, 381*(6654), 187–192. https://doi.org/10.1126/science.adh2586

U.S. Bureau of Labor Statistics. *Occupational Employment and Wage Statistics: Design*. https://www.bls.gov/opub/hom/oews/design.htm

**Reference status:** Verify final journal citation style, institutional release years, and any additional literature before submission. These sources contextualize the separate evidence streams; they do not prove AI causality in this study.
