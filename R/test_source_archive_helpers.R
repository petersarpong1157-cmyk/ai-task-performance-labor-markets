# Base-R tests: no original BLS or O*NET archives required.
source("R/source_archive_helpers.R")
stopifnot(identical(choose_zip_member("nested/Task Statements.xlsx","Task Statements.xlsx"),
                    "nested/Task Statements.xlsx"))
stopifnot(identical(choose_zip_member("all_data_M_2021.xlsx","all_data_M_2021.xlsx"),
                    "all_data_M_2021.xlsx"))
stopifnot(identical(choose_zip_member("A\\\\B\\\\Task Statements.xlsx","Task Statements.xlsx"),
                    "A/B/Task Statements.xlsx"))
err <- function(x) inherits(try(x,silent=TRUE),"try-error")
stopifnot(err(choose_zip_member(c("a/Task Statements.xlsx","b/Task Statements.xlsx"),
                               "Task Statements.xlsx")))
stopifnot(err(choose_zip_member("other.xlsx","Task Statements.xlsx")))
stopifnot(err(choose_zip_member("../Task Statements.xlsx","Task Statements.xlsx")))
cat("PASS: source archive path locator identifies target files, rejects duplicates and traversal.\n")
