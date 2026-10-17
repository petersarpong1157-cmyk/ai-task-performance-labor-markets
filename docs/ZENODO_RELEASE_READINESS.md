# Zenodo deposit — review before publication

## Two safe deposit options

1. **GitHub software snapshot:** connect the repository in Zenodo's GitHub integration, then create a **tagged GitHub release only after finalizing license and contents**. Zenodo can archive that tagged snapshot. This captures code and tracked repository files but not GitHub Actions artifacts unless committed or separately attached to a release.
2. **Supporting manuscript/figure bundle:** upload the separately prepared local `AI_Labor_Markets_Zenodo_Review_Package_2026-10-17.zip` as a draft Zenodo *publication* record and link it to the software snapshot. It includes two manuscript formats, 15 processed CSV tables and 7 figure files. The bundle itself is currently available in the ChatGPT session rather than this GitHub repository.

**The deposited object must be accurately identified:** a working manuscript and research materials, not peer-reviewed publication, validated autonomous AI task performance or evidence of AI-caused employment/wage shifts.

## Prepublication gates

- Verify the raw BLS 2021–2025 extraction and document the results of an independent clean source run.
- Check all final reference records, figures and methods on the manuscript.
- Resolve authorship and any coauthor approvals, affiliations, conflicts, funding, AI declaration and the distribution license; the repository currently lacks a chosen `LICENSE`.
- If needed, restrict or embargo materials that should not be public; do not publish synthetic reference keys, personal files or hidden evaluation datasets.
- Use *Save draft* in Zenodo first and preview the exact object. Never click *Publish* until author confirmation.

## Archived provenance at present

- The original BLS archives exist in the research working folder, but **presence is not proof of raw numerical reproduction**.
- Three O*NET 31.0 source task records directly matched the workbook, but these are **not three validated task mappings**.
- GitHub Actions run 39034621104 passed the processed-data R calculation and generated SVG/PDF outputs; raw-source steps are not part of that run.
- The preliminary bundle contains a checksum manifest; verify it after extraction.

## Persistent identifiers

**No DOI has been assigned** and no public Zenodo record has been created through this workflow. Zenodo permits reserving a DOI in a draft and issues/registers it on publication. Update `CITATION.cff` and manuscript metadata only after a DOI exists.

## Official documentation

- https://help.zenodo.org/docs/github/enable-repository/
- https://help.zenodo.org/docs/github/archive-software/github-upload/
- https://help.zenodo.org/docs/get-started/quickstart/
