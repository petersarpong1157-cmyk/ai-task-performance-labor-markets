# Publication-oriented descriptive visualization from committed Phase 16N table.
# Run from repository root: Rscript R/create_primary_figures.R
# No external packages required. No causal AI inference.
d <- read.csv("data/processed/table_1_primary_occupational_results.csv",
              stringsAsFactors=FALSE,check.names=FALSE)
required <- c("occupation_code","occupation_title","metros",
              "employment_change_pct","real_wage_change_pct")
stopifnot(all(required %in% names(d)), nrow(d)==10L,
          !anyDuplicated(d$occupation_code), all(d$metros==212L),
          all(is.finite(d$employment_change_pct)),
          all(is.finite(d$real_wage_change_pct)))
d <- d[order(d$employment_change_pct,decreasing=TRUE),]
dir.create("figures/generated",recursive=TRUE,showWarnings=FALSE)
draw_figure <- function() {
  old <- par(no.readonly=TRUE)
  on.exit(par(old))
  par(mfrow=c(1,2),mar=c(5.2,21,4,2.2),oma=c(2,0,4,0),
      family="sans",las=1,cex.axis=.85)
  vals <- list(d$employment_change_pct,d$real_wage_change_pct)
  names(vals) <- c("Employment","Real mean wage")
  limits <- list(c(-33,51),c(-11,3))
  for(i in 1:2) {
    z <- vals[[i]]
    y <- rev(seq_along(z))
    plot(NA,xlim=limits[[i]],ylim=c(.5,10.5),xlab="Percent change, 2021–2025",
         ylab="",yaxt="n",bty="n",main=names(vals)[i])
    axis(2,at=y,labels=d$occupation_title,tick=FALSE,las=1,cex.axis=.74)
    abline(v=0,col="#666666",lwd=1.2)
    cols <- ifelse(z>=0,"#28756A","#B65C52")
    rect(pmin(0,z),y-.28,pmax(0,z),y+.28,col=cols,border=NA)
    for(j in seq_along(z)) {
      xx <- z[j] + if(z[j]>=0) 1.0 else -1.0
      text(xx,y[j],sprintf("%+.1f%%",z[j]),pos=if(z[j]>=0) 4 else 2,
           cex=.72,xpd=NA)
    }
  }
  mtext("Descriptive BLS OEWS comparisons | 10 occupations, 212 common metros",
        side=3,outer=TRUE,line=1,cex=1.05,font=2)
  mtext("Real wages deflated with national annual CPI-U. No AI causal effect is estimated.",
        side=1,outer=TRUE,line=.3,cex=.8)
}
grDevices::svg("figures/generated/primary_employment_real_wage.svg",
               width=17,height=9,pointsize=11)
draw_figure()
grDevices::dev.off()
grDevices::pdf("figures/generated/primary_employment_real_wage.pdf",
               width=17,height=9,pointsize=11,onefile=FALSE)
draw_figure()
grDevices::dev.off()
stopifnot(file.exists("figures/generated/primary_employment_real_wage.svg"),
          file.info("figures/generated/primary_employment_real_wage.svg")$size>1000,
          file.exists("figures/generated/primary_employment_real_wage.pdf"),
          file.info("figures/generated/primary_employment_real_wage.pdf")$size>1000)
cat("PASS: primary occupation figure created in SVG and PDF from committed results.\n")
