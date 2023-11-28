library("qqman")
library("tidyverse")

association_results_plink <- read.table("binary_run.qassoc", header = TRUE)

manhattan(association_results_plink, col = c("red", "orange", "green", "blue", "purple"), main = "PLINK Manhattan Plot Unadjusted", suggestiveline = -log10(1e-7))

qq(association_results_plink$P)


adjusted_assocaition_results_plink <- read.table("binary_run.qassoc.adjusted_withGC.txt", header = TRUE)

GC_adjusted_assocaition_results_plink <- adjusted_assocaition_results_plink |>
  select(CHR, SNP, GC, BP)

#change column name GC to P
colnames(GC_adjusted_assocaition_results_plink) <- c("CHR", "SNP", "P", "BP")


#need BP
manhattan(GC_adjusted_assocaition_results_plink, col = c("red", "orange", "green", "blue", "purple"), main = "PLINK Manhattan Plot GC Adjusted", suggestiveline = -log10(1e-5))

qq(GC_adjusted_assocaition_results_plink$GC)
