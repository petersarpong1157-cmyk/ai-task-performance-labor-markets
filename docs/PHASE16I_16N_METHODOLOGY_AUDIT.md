# Phase 16I–16N methodology and occupational-definition audit

**Source:** researcher-uploaded Phase 16I–16N CSV records and methodological notes. This document distinguishes early provisional review status from later tests performed against original BLS occupation-definition Excel source text.

## Occupational definitions: original-source comparison

Phase 16M includes 20 source matches: **four occupations × five years**. For each of these occupations, the title and normalized full published BLS occupation description match its 2021 counterpart in every year examined (2021–2025):

| SOC | Occupation | Years compared | Titles matching | Description text matching |
|---|---|---:|---|---|
| 13-1082 | Project Management Specialists | 5 | Yes | Yes |
| 13-1151 | Training and Development Specialists | 5 | Yes | Yes |
| 13-2011 | Accountants and Auditors | 5 | Yes | Yes |
| 13-2072 | Loan Officers | 5 | Yes | Yes |

The Phase 16I/J registers initially marked methodological verification **pending**. These are earlier working records, not contradictory final findings: Phase 16K subsequently documented official BLS methods, and Phase 16M subsequently verified the four full-definition records. **The other six occupations in the ten-occupation primary results table have not undergone the same full-definition comparison**, although titles and codes may have been checked.

Exact source filenames are `occupation_definitions_m2021.xlsx` through `occupation_definitions_m2025.xlsx`; the local Phase 16M comparison preserved source file MD5 hashes, source row and normalized descriptions. Matching descriptions does not prove every element of OEWS survey estimation, occupational implementation, or classification was constant.

## BLS OEWS methods: year-specific caveats

| Year | SOC | Industry classification | Metro delineation | Estimation |
|---|---|---|---|---|
| 2021 | 2018 SOC | 2017 NAICS | OMB 17-01 | MB3 |
| 2022 | 2018 SOC | 2022 NAICS | OMB 17-01 | MB3 |
| 2023 | 2018 SOC | 2022 NAICS | OMB 17-01 | MB3 |
| 2024 | 2018 SOC | 2022 NAICS | OMB 23-01 | MB3 |
| 2025 | 2018 SOC | 2022 NAICS | OMB 23-01 | MB3 |

The records identify OEWS's six semiannual survey panels spread over three years. Geographic county FIPS membership was checked over all five years for the stable 282 metro codes; the primary complete-case ten-occupation sample has 212 of these codes. County stability does **not** eliminate changes in survey methodology or all source comparability issues.

## Primary and alternative occupational tables

- `table_1_primary_occupational_results.csv`: **10 occupations**, **212 metros** for each. It records occupational employment change, real-wage change, median metropolitan growth, share of metros with employment gains, and extreme change counts.
- `table_2_geographic_sample_sensitivity.csv`: compares **46 common metros across 20 occupations** versus **212 common metros across the top ten**; the ten rows and underlying comparison are distinct from the later Phase 17W occupation-specific **266–282 paired-endpoint metro** sensitivity design.
- `phase16n_methodological_notes.txt`: explicitly states that the selected sample is not nationally representative and no AI causal effect was identified.

## Publication wording

Suggested: “The published BLS occupation titles and descriptions were identical across 2021–2025 for four prespecified occupations based on a comparison of the source definition spreadsheets. Remaining occupations require equivalent full-definition verification. BLS geography and underlying methodology vary across releases, so the temporal contrasts are descriptive.”

**Repository status:** methodology audit is published; the researcher-uploaded raw CSV and TXT attachments are not all individually committed. Full public reproducibility still requires scripts and complete data provenance. No external independent replication is claimed.
