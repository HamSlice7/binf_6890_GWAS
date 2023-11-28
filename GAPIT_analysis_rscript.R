source("http://zzlab.net/GAPIT/GAPIT.library.R")
source("http://zzlab.net/GAPIT/gapit_functions.txt")


#Import data 
myY <- read.table("FT10_pheno_GAPIT.txt", head = TRUE)
myG <- read.delim(file="genotype_vcf.hmp.txt",head= FALSE)

#GWAS Run1 MLM
myGAPIT_1=GAPIT(
  Y=myY, 
  G=myG,
  Model.selection = TRUE
  )

#GWAS run 2
GAPIT_2 <- GAPIT(
  Y=myY, 
  G=myG,
  Model.selection = TRUE, 
  model = c("MLM")
)


#GWAS run 3, MLM PCA=3
GAPIT_3 <- GAPIT(
  Y=myY, 
  G=myG,
  PCA.total=3,
)

#GWAS run 4 BLINK PC =?, 
GAPIT_4 <- GAPIT(
  Y=myY, 
  G=myG,
  Model.selection = TRUE,
  model = c("BLINK")
)

#GWAS run 5 BLINK PC =3, 
GAPIT_5 <- GAPIT(
  Y=myY, 
  G=myG,
  PCA.total=3,
  model = c("BLINK")
)


#GWAS run 6 GLM 
GAPIT_6 <- GAPIT(
  Y=myY, 
  G=myG,
  Model.selection = TRUE,
  model = c("GLM")
)
