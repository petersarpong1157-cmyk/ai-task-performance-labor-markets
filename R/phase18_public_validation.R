# Minimal validation of saved research summary results.
# This is NOT the full source-to-figure analysis pipeline.
# Input files (selected interactively):
# 1. phase17y_consolidated_results.csv
# 2. phase17j_combined_total.csv
# Dependencies: readr, dplyr
stopifnot(requireNamespace("readr", quietly = TRUE))
stopifnot(requireNamespace("dplyr", quietly = TRUE))
cat("Select phase17y_consolidated_results.csv\n")
consolidated_path <- file.choose()
cat("Select phase17j_combined_total.csv\n")
benchmark_path <- file.choose()
stopifnot(basename(consolidated_path) == "phase17y_consolidated_results.csv")
stopifnot(basename(benchmark_path) == "phase17j_combined_total.csv")
x <- readr::read_csv(consolidated_path, show_col_types = FALSE)
b <- readr::read_csv(benchmark_path, show_col_types = FALSE)
needed <- c("occupation_code","employment_change_pct","real_wage_change_pct",
  "expanded_employment_pct","expanded_real_wage_pct",
  "fixed_weight_real_change_pct","same_wage_direction")
stopifnot(all(needed %in% names(x)), nrow(x) == 10L,
  !anyDuplicated(x$occupation_code), nrow(b) == 1L,
  all(c("cases","numerically_correct_cases","correct_fields","total_fields") %in% names(b)))
stopifnot(b$cases == 26, b$numerically_correct_cases == 26,
  b$correct_fields == 140, b$total_fields == 140)
stopifnot(all(is.finite(as.matrix(x[, c("employment_change_pct",
  "real_wage_change_pct","expanded_employment_pct",
  "expanded_real_wage_pct","fixed_weight_real_change_pct")]))))
checks <- data.frame(
  check = c("Primary real-wage declines", "Fixed-weight declines",
    "Geographic employment directions unchanged",
    "Geographic real-wage directions unchanged",
    "Fixed-weight real-wage directions unchanged"),
  observed = c(sum(x$real_wage_change_pct < 0),
    sum(x$fixed_weight_real_change_pct < 0),
    sum(sign(x$employment_change_pct) == sign(x$expanded_employment_pct)),
    sum(sign(x$real_wage_change_pct) == sign(x$expanded_real_wage_pct)),
    sum(sign(x$real_wage_change_pct) == sign(x$fixed_weight_real_change_pct))),
  expected = c(9, 8, 10, 10, 9)
)
checks$pass <- checks$observed == checks$expected
print(checks, row.names = FALSE)
if (!all(checks$pass)) stop("Summary checks failed; investigate source results.")
cat("Saved-summary checks passed. This does not verify original data or AI provenance.\n")
