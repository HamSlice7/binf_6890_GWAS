source("http://zzlab.net/GAPIT/GAPIT.library.R")
source("http://zzlab.net/GAPIT/gapit_functions.txt")


#Import data 
myY <- read.table("FT10_pheno_GAPIT.txt", head = TRUE)
myG <- read.delim(file="genotype_vcf.hmp.txt",head= FALSE)

#GWAS MLM
myGAPIT_1=GAPIT(
  Y=myY, 
  G=myG,
  Model.selection = TRUE
  )


