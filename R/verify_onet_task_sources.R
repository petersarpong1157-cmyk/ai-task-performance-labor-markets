# Verify documented partial O*NET task links against the original O*NET 31.0 archive.
# Usage from repository root:
#   Rscript R/verify_onet_task_sources.R "/path/to/db_31_0_excel.zip"
# Requires readxl. This tests source identity ONLY, not AI task competence.
source("R/source_archive_helpers.R")
args <- commandArgs(trailingOnly = TRUE)
if(length(args) != 1L) stop("Usage: Rscript R/verify_onet_task_sources.R <db_31_0_excel.zip>")
if (!file.exists(args[1])) stop("Cannot find O*NET archive")
if (!requireNamespace("readxl", quietly=TRUE)) stop("Please install readxl")
member <- find_zip_member(args[1], "Task Statements.xlsx")
tmp <- tempfile("onet31_")
dir.create(tmp)
source_path <- extract_zip_member(args[1],member,tmp)
source <- readxl::read_excel(source_path,col_types="text")
names(source) <- trimws(names(source))
req <- c("O*NET-SOC Code","Task ID","Task","Task Type","Date","Domain Source")
if (!all(req %in% names(source))) stop("O*NET source columns missing")
expected <- data.frame(
  task_id=c("21516","21514","12874"),
  soc=c("13-2011.00","13-2011.00","13-1011.00"),
  task=c(
    "Review accounts for discrepancies and reconcile differences.",
    "Prepare, examine, or analyze accounting records, financial statements, or other financial reports to assess accuracy, completeness, and conformance to reporting and procedural standards.",
    "Prepare periodic accounting statements for clients."
  ),
  task_type=c("Core","Core","Supplemental"),
  date=c("08/2026","08/2026","08/2020"),
  domain_source=c("Occupational Expert","Occupational Expert","Incumbent"),
  stringsAsFactors=FALSE)
matched <- source[match(expected$task_id, trimws(source[["Task ID"]])),]
if(nrow(matched)!=3L || anyNA(matched[["Task ID"]])) stop("O*NET task ID absent")
normalize <- function(x) trimws(gsub("[[:space:]]+"," ",as.character(x)))
check <- data.frame(task_id=expected$task_id,
  soc_match=normalize(matched[["O*NET-SOC Code"]])==expected$soc,
  statement_match=normalize(matched[["Task"]])==expected$task,
  task_type_match=normalize(matched[["Task Type"]])==expected$task_type,
  source_match=normalize(matched[["Domain Source"]])==expected$domain_source,
  date_match=normalize(matched[["Date"]])==expected$date)
print(check,row.names=FALSE)
if(!all(as.matrix(check[-1]))) stop("Task source comparison failed")
dir.create("results/reproduced",recursive=TRUE,showWarnings=FALSE)
write.csv(check,"results/reproduced/onet_task_source_check.csv",row.names=FALSE)
unlink(tmp, recursive=TRUE)
cat("PASS: 3 source task IDs, codes, statement text, type, domain source, and dates match.\n")
cat("Candidate partial-activity mappings remain researcher-led; full task automation is NOT validated.\n")
