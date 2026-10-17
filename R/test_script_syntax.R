# Parse all maintained R entry points without executing workflows requiring raw archives.
scripts <- c(
  "R/source_archive_helpers.R",
  "R/test_source_archive_helpers.R",
  "R/reproduce_descriptive_results.R",
  "R/create_primary_figures.R",
  "R/reconcile_raw_oews.R",
  "R/verify_onet_task_sources.R"
)
stopifnot(all(file.exists(scripts)))
for (path in scripts) {
  expr <- parse(file=path, keep.source=FALSE)
  stopifnot(length(expr)>0)
  cat("PARSE OK:",path,"\n")
}
cat("PASS: all maintained R scripts parse successfully.\n")
