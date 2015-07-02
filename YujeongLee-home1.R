 rm(list=ls(all=TRUE))
 P <- read.csv("/Users/ÀÌÀ¯Á¤/Desktop/New_York_City_Leading_Causes_of_Death.csv")
 Eh <- P[P$Ethnicity=="HISPANIC",]
 Enh <- P[P$Ethnicity=="NON-HISPANIC WHITE",]
 hist(log10(Eh$Count))
 hist(log10(Enh$Count))
 