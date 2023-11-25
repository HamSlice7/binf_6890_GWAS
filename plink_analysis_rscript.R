library("qqman")

association_results_plink <- read.table("binary_run.qassoc", header = TRUE)

manhattan(association_results_plink, col = c("red", "orange", "green", "blue", "purple"), main = "PLINK Manhattan Plot", suggestiveline = -log10(1e-7))

qq(association_results_plink$P)

