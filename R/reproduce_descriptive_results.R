# Reproduce published descriptive tables from already processed Phase 16-17 CSVs.
# This does NOT reproduce the original BLS source extraction, geographic audit,
# AI benchmark trials or first-attempt provenance.
# Run: Rscript R/reproduce_descriptive_results.R
# Place inputs under data/processed/ as described in data/README.md.
# Dependencies: base R only.
dir.create("results/reproduced",recursive=TRUE,showWarnings=FALSE)
read_input <- function(name) {
  path <- file.path("data","processed",name)
  if (!file.exists(path)) stop("Missing input: ",path)
  read.csv(path,check.names=FALSE,stringsAsFactors=FALSE)
}
require_columns <- function(x, cols, file) {
  absent <- setdiff(cols,names(x))
  if (length(absent)) stop(file,": missing columns: ",paste(absent,collapse=", "))
}
close_enough <- function(actual,expected,tol=1e-6) {
  all(is.finite(actual)) && all(is.finite(expected)) &&
    all(abs(actual-expected)<tol)
}
annual <- read_input("phase16c_matched_annual.csv")
endpoints <- read_input("table_1_primary_occupational_results.csv")
geo <- read_input("phase17w_geographic_sensitivity.csv")
wages <- read_input("phase17x_annual_weighted_wages.csv")
weight_ref <- read_input("phase17x_weight_sensitivity.csv")
require_columns(annual,c("occupation_code","year","sample","reported_employment","nominal_mean_wage","cpi_u"),"annual")
require_columns(endpoints,c("occupation_code","occupation_title","employment_change_pct","real_wage_change_pct"),"endpoints")
require_columns(geo,c("occupation_code","expanded_employment_pct","expanded_real_wage_pct"),"geo")
require_columns(wages,c("occupation_code","year","current_weight_wage","fixed_2021_weight_wage"),"wages")
require_columns(weight_ref,c("occupation_code","current_weight_real_change_pct","fixed_weight_real_change_pct"),"weight_ref")
a <- annual[annual$sample=="Top 10 - 212 metros",]
stopifnot(nrow(a)==50,nrow(endpoints)==10,nrow(wages)==50,nrow(weight_ref)==10,
  length(unique(a$occupation_code))==10,!anyDuplicated(a[c("occupation_code","year")]),
  all(table(a$occupation_code)==5),all(table(a$year)==10))
w2021 <- setNames(wages$current_weight_wage[wages$year==2021],wages$occupation_code[wages$year==2021])
w2025 <- setNames(wages$current_weight_wage[wages$year==2025],wages$occupation_code[wages$year==2025])
f2021 <- setNames(wages$fixed_2021_weight_wage[wages$year==2021],wages$occupation_code[wages$year==2021])
f2025 <- setNames(wages$fixed_2021_weight_wage[wages$year==2025],wages$occupation_code[wages$year==2025])
e2021 <- setNames(a$reported_employment[a$year==2021],a$occupation_code[a$year==2021])
e2025 <- setNames(a$reported_employment[a$year==2025],a$occupation_code[a$year==2025])
cpi2021 <- unique(a$cpi_u[a$year==2021])
cpi2025 <- unique(a$cpi_u[a$year==2025])
stopifnot(length(cpi2021)==1,length(cpi2025)==1,
  abs(cpi2021-270.970)<1e-8,abs(cpi2025-321.943)<1e-8)
o <- endpoints$occupation_code
stopifnot(setequal(o,names(e2021)),setequal(o,names(w2021)),setequal(o,geo$occupation_code),setequal(o,weight_ref$occupation_code))
employment <- 100*(e2025[o]/e2021[o]-1)
real_wage <- 100*((w2025[o]/cpi2025)/(w2021[o]/cpi2021)-1)
fixed_wage <- 100*((f2025[o]/cpi2025)/(f2021[o]/cpi2021)-1)
wr <- weight_ref[match(o,weight_ref$occupation_code),]
gr <- geo[match(o,geo$occupation_code),]
stopifnot(close_enough(employment,endpoints$employment_change_pct),
  close_enough(real_wage,endpoints$real_wage_change_pct),
  close_enough(real_wage,wr$current_weight_real_change_pct),
  close_enough(fixed_wage,wr$fixed_weight_real_change_pct),
  sum(sign(real_wage)==sign(fixed_wage))==9,
  sum(sign(employment)==sign(gr$expanded_employment_pct))==10,
  sum(sign(real_wage)==sign(gr$expanded_real_wage_pct))==10)
summary <- data.frame(occupation_code=o,occupation=endpoints$occupation_title,
  employment_change_pct=unname(employment),
  real_wage_annual_weights_pct=unname(real_wage),
  real_wage_fixed_2021_weights_pct=unname(fixed_wage),
  expanded_employment_change_pct=gr$expanded_employment_pct,
  expanded_real_wage_change_pct=gr$expanded_real_wage_pct)
write.csv(summary,"results/reproduced/checked_occupational_results.csv",row.names=FALSE,na="")
message("PASS: 10 employment and wage changes reproduced, geographic directions 10/10 and fixed-weight directions 9/10.")
message("This is a derived-output consistency test, NOT independent source-data replication.")
