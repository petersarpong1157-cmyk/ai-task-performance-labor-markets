# Reconcile original BLS May OEWS ZIP workbooks with the verified 212-metro panel.
# Run from repository root: Rscript R/reconcile_raw_oews.R /path/to/BLS/archives
# Requires R package readxl. Official archives: oesm21all.zip ... oesm25all.zip.
# This script does NOT verify county membership or AI benchmark provenance.
source("R/source_archive_helpers.R")
args <- commandArgs(trailingOnly=TRUE)
if (length(args)!=1L) stop("Usage: Rscript R/reconcile_raw_oews.R <directory-with-oesm21all.zip-through-oesm25all.zip>")
rawdir <- args[1]
if (!requireNamespace("readxl",quietly=TRUE)) stop("Please install readxl: install.packages('readxl')")
selected <- read.csv("data/processed/phase16b_common_10_metros.csv",colClasses="character")
expected <- read.csv("data/processed/phase16c_matched_annual.csv",stringsAsFactors=FALSE)
primary <- read.csv("data/processed/table_1_primary_occupational_results.csv",colClasses=c(occupation_code="character"))
stopifnot(identical(names(selected),"metro_code"),nrow(selected)==212L,!anyDuplicated(selected$metro_code),
  nrow(primary)==10L,nrow(expected)>=50L)
ten <- expected[expected$sample=="Top 10 - 212 metros",]
stopifnot(nrow(ten)==50L,!anyDuplicated(ten[c("year","occupation_code")]))
parse_number <- function(z) {
 z <- trimws(as.character(z))
 z[z %in% c("","*","**","#","NA","N/A")] <- NA_character_
 suppressWarnings(as.numeric(gsub(",","",z,fixed=TRUE)))
}
res <- vector("list",5L)
for (i in seq_along(2021:2025)) {
 year <- (2021:2025)[i]
 yy <- substr(as.character(year),3,4)
 archive <- file.path(rawdir,paste0("oesm",yy,"all.zip"))
 internal <- find_zip_member(archive,paste0("all_data_M_",year,".xlsx"))
 if (!file.exists(archive)) stop("Missing BLS archive: ",archive)
 td <- tempfile(paste0("oews_",year,"_"));dir.create(td)
 tryCatch({
  source_path <- extract_zip_member(archive,internal,td)
  raw <- readxl::read_excel(source_path,col_types="text",.name_repair="minimal")
  names(raw) <- trimws(names(raw))
  required <- c("AREA","OCC_CODE","NAICS","OWN_CODE","TOT_EMP","A_MEAN")
  if(!all(required %in% names(raw))) stop("Missing OEWS source fields in year ",year)
  raw <- raw[trimws(raw$AREA) %in% selected$metro_code &
    trimws(raw$OCC_CODE) %in% primary$occupation_code &
    trimws(raw$NAICS)=="000000" &
    trimws(raw$OWN_CODE)=="1235",,drop=FALSE]
  if (anyDuplicated(raw[c("AREA","OCC_CODE")])) stop("Duplicate metro/occupation source record for ",year)
  if (nrow(raw)!=212L*10L) stop("Expected 2120 source rows in ",year,", got ",nrow(raw))
  if (anyNA(parse_number(raw$TOT_EMP))||anyNA(parse_number(raw$A_MEAN)))
    stop("Unexpected suppressed/missing primary sample values in ",year)
  df <- data.frame(year=year,occupation_code=trimws(raw$OCC_CODE),
    employment=parse_number(raw$TOT_EMP),wage=parse_number(raw$A_MEAN))
  a <- aggregate(df$employment,list(occupation_code=df$occupation_code),sum)
  names(a)[2] <- "reconstructed_employment"
  w <- aggregate(df$employment*df$wage,list(occupation_code=df$occupation_code),sum)
  names(w)[2] <- "weighted_wage_numerator"
  a <- merge(a,w,by="occupation_code")
  a$reconstructed_mean_wage <- a$weighted_wage_numerator/a$reconstructed_employment
  a$year <- year
  res[[i]] <- a
 }, finally=unlink(td,recursive=TRUE))
 message("Read raw BLS OEWS ",year)
}
result <- do.call(rbind,res)
reference <- ten[,c("year","occupation_code","reported_employment","nominal_mean_wage")]
joined <- merge(reference,result,by=c("year","occupation_code"),all=TRUE)
if(nrow(joined)!=50L || anyNA(joined))stop("Missing reference or source records")
joined$employment_matches <- abs(joined$reported_employment-joined$reconstructed_employment)<1e-6
joined$mean_wage_matches <- abs(joined$nominal_mean_wage-joined$reconstructed_mean_wage)<1e-6
dir.create("results/reproduced",recursive=TRUE,showWarnings=FALSE)
write.csv(joined,"results/reproduced/raw_bls_reconciliation.csv",row.names=FALSE)
cat("Employment matches:",sum(joined$employment_matches),"/50; wage matches:",sum(joined$mean_wage_matches),"/50\n")
if (!all(joined$employment_matches & joined$mean_wage_matches))
 stop("Raw OEWS versus processed values differ; investigate saved comparison.")
cat("PASS: raw BLS source workbooks reproduce 50 occupation-year employment and weighted-wage aggregates.\n")
cat("This does NOT verify national representativeness, changing survey methodology, or AI causality.\n")
