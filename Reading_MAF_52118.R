library("maftools", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
##read the file as table
ICGC_germline_primary_reduced_maf_final <- read.table("~/Desktop/Data_Files/ICGC_germline_primary_reduced_maf_final.txt", quote="\"", comment.char="")

##error message with code

Error in scan(file = file, what = what, sep = sep, quote = quote, dec = dec,  : 
                line 2 did not have 12 elements

 ## read the file as data frame read.delim()             
 ICGC_data <- read.delim("~/Desktop/Data_Files/ICGC_germline_primary_reduced_maf_final.txt")

## error message
 
 Error in scan(file = file, what = what, sep = sep, quote = quote, dec = dec,  : 
                 line 2 did not have 12 elements
               
## read the file as MAF

ICGC_data_MAF <- read.maf(maf = "~/Desktop/Data_Files/ICGC_germline_primary_reduced_maf_final.txt")

## Error message

reading maf..
Read 740510 rows and 12 (of 12) columns from 0.045 GB file in 00:00:03
Error in validateMaf(maf = maf, isTCGA = isTCGA, rdup = removeDuplicatedVariants,  : 
                       missing required fields from MAF: Hugo_Symbol
                     
  ## To test that I am doing any syntax error in R ; run the same commands ona different file                   
 
  EGAD00001000946_reduced_maf_final <- read.delim("~/Desktop/Data_Files/EGAD00001000946_reduced_maf_final.txt", header=FALSE)
  View(EGAD00001000946_reduced_maf_final)
  
  ## No error message 
  
  EGA_data_maf <- read.maf(maf = "~/Desktop/Data_Files/EGAD00001000946_reduced_maf_final.txt")

## No error message ; R output
  
  reading maf..
  NOTE: Removed 12 duplicated variants
  silent variants: 467252
  ID      N
  1:       Samples     34
  2:       3'Flank  26524
  3:         3'UTR   3781
  4:       5'Flank  26990
  5:         5'UTR    621
  6:           IGR 182919
  7:        Intron 221796
  8:           RNA   2849
  9:        Silent   1379
  10: Splice_Region    393
  Summarizing..
  ID summary    Mean Median
  1:             NCBI_Build      NA      NA     NA
  2:                 Center      NA      NA     NA
  3:                Samples      34      NA     NA
  4:                 nGenes    3242      NA     NA
  5:        Frame_Shift_Del     123   3.618    3.0
  6:        Frame_Shift_Ins      56   1.647    1.0
  7:           In_Frame_Del      18   0.529    0.0
  8:           In_Frame_Ins      20   0.588    0.0
  9:      Missense_Mutation    3333  98.029   32.0
  10:      Nonsense_Mutation     306   9.000    2.0
  11:       Nonstop_Mutation       5   0.147    0.0
  12:            Splice_Site     110   3.235    2.0
  13: Translation_Start_Site       2   0.059    0.0
  14:                  total    3973 116.853   42.5
  
  
