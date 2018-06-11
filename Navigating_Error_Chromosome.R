
##Using DeconstructsSigs Package to identify mutational signatures 
## Does the MAF file read right using maftools
MB_REC_01_maf <- read.maf(maf = "~/Desktop/Data_Files/newmaf_files/MB-REC-01_new.maf.txt")

## ERROR
reading maf..
Error in validateMaf(maf = maf, isTCGA = isTCGA, rdup = removeDuplicatedVariants,  : 
                       missing required fields from MAF: Chromosome

MB_REC_01_new_maf <- read.delim("~/Desktop/Data_Files/newmaf_files/MB-REC-01_new.maf.txt")
View(MB_REC_01_new_maf)

## out put 

Hugo_Symbol.....Entrez_Gene_Id..Chromosome......Start_Position..End_Position....Variant_Classification..Variant_Type....Reference_Allele........Tumor_Seq_Allele1.......Tumor_Seq_Allele2.......Tumor_Sample_Barcode....HGVSp_Short
X
X.1
X.2
X.3
X.4
X.5
X.6
X.7
X.8
X.9
X.10
1675
A4GNT
51146
chr3
137846059
137846059
Intron
SNP
T
T
A
MB-REC-01
28
AADACL3
126767
chr1
12786246
12786246
3'Flank
SNP
C
C
A
MB-REC-01
730
AAK1
22848
chr2
69761818
69761818
Intron
SNP
C
C
A
MB-REC-01
4741
AAMDC
28971
chr11
77550009
77550009
Intron
DEL
T
T
-
MB-REC-01
6024
AATF
26574
chr17
35396315
35396315
Intron
SNP
C
C
A
MB-REC-01
6025
AATF
26574
chr17
35396316
35396316
Intron
SNP


## Error in Headers 
## Picuture_1_Headers_error.png

## alternative approach , deconstructSigs package for mutational signatures: 
## deconstructSigs aims to determine the contribution of known mutational processes to a tumor sample. By using deconstructSigs, one can:

      Determine the weights of each mutational signature contributing to an individual tumor sample

      Plot the reconstructed mutational profile (using the calculated weights) and compare to the original input sample
 ## The most basic initial input to the deconstructSigs package consists of a data frame containing the mutational data for a tumor sample set.

This structure must contain the following columns:

sample identifier -- sample.id

chromosome -- chr

base position -- pos

reference base -- ref

alternate base -- alt

mut.to.sigs.input()

## Subsetting the data set to create the data set with the required columns.



Test1 <- as.data.frame(Test)
sigs.input = mut.to.sigs.input(mut.ref = Test1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg19)
##ERROR 
Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 5253: 'allow.nonnarrowing' is FALSE and the supplied start (112020245) is > refwidth + 1
Chromosome 16 position 112020246 A -> G :: The last point being read by the software is 112020245 where as we have a library("BSgenome.Hsapiens.UCSC.hg19", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
 in our file.
## Change the reference genome to HG38
detach("package:BSgenome.Hsapiens.UCSC.hg19", unload=TRUE)
BSgenome.Hsapiens.UCSC.hg38)
Test1.1 <- as.data.frame(Test1)
sigs.input = mut.to.sigs.input(mut.ref = Test1.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
## Error
##Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 465: 'allow.nonnarrowing' is FALSE and the supplied start (249073485) is > refwidth + 1
##chromosome 1 position 2490734486 C -> T :: The last point being read by the software is 249073485  where as we have  249073486 in our file.
## Delete the row that was giving the error. Then run the same code
test2.1 <- as.data.frame(Test2)
sigs.input = mut.to.sigs.input(mut.ref = Test2.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)

## Error 
## Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 465: 'allow.nonnarrowing' is FALSE and the supplied start (249116200) is > refwidth + 1
## chromosome 1 position 249116199 C -> T :: The last point being read by the software is 249116199  where as we have  249116200 in our file.

##Delete the row that was giving the error. Then run the same code
Test3.1 <- as.data.frame(Test3)
sigs.input = mut.to.sigs.input(mut.ref = Test3.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
## Error 
 ##Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 1196: 'allow.nonnarrowing' is FALSE and the supplied start (242281689) is > refwidth + 1
## chromosome 2 
library("BSgenome.Hsapiens.UCSC.hg19", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
sigs.input = mut.to.sigs.input(mut.ref = Test3.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg19)

##Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 5250: 'allow.nonnarrowing' is FALSE and the supplied start (112020245) is > refwidth + 1
  solving row 5250: 'allow.nonnarrowing' isFALSE and the supplied start (112020245) is > refwidth + 1
##chromosome16
Test4.1 <- as.data.frame(Test4)
sigs.input = mut.to.sigs.input(mut.ref = Test4.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg19)
## Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 5862: 'allow.nonnarrowing' is FALSE and the supplied start (190198043) is > refwidth + 1
  solving row 5862: 'allow.nonnarrowing'is FALSE and the supplied start (190198043) is > refwidth + 1

##Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 5862: 'allow.nonnarrowing' is FALSE and the supplied start (190198043) is > refwidth + 1
  solving row 5862: 'allow.nonnarrowing'isFALSE and the supplied start (190198043) is > refwidth + 1

Test5.1 <- as.data.frame(Test5)
sigs.input = mut.to.sigs.input(mut.ref = Test5.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg19)

##Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 6069: 'allow.nonnarrowing' is FALSE and the supplied start (142605829) is > refwidth + 1
  solving row 6069: 'allow.nonnarrowing' isFALSEand the supplied start (142605829) is > refwidth + 1
Test6.1 <- as.data.frame(Test6)
sigs.input = mut.to.sigs.input(mut.ref = Test6.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg19)
## Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 6069: 'allow.nonnarrowing' is FALSE and the supplied start (142646715) is > refwidth + 1
  solving row 6069: 'allow.nonnarrowing' isFALSEand the supplied start (142646715) is > refwidth + 1

Test7.1 <- as.data.frame(Test7)
sigs.input = mut.to.sigs.input(mut.ref = Test7.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg19)
##Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
  solving row 6069: 'allow.nonnarrowing' is FALSE and the supplied start (142898579) is > refwidth + 1
  solving row 6069: 'allow.nonnarrowing' isFALSE and the supplied start (142898579) is > refwidth + 1

Test8.1 <- as.data.frame(Test8)
sigs.input = mut.to.sigs.input(mut.ref = Test8.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg19)

##Warning message:
In mut.to.sigs.input(mut.ref = Test8.1, sample.id = "Sample", chr = "chr",  :
  Check ref bases -- not all match context:
  MB-REC-01:chr7:33037788:T:G, MB-REC-01:chr9:57493:C:G, MB-REC-01:chr9:58177:C:T, MB-REC-01:chr9:65293:G:A, MB-REC-01:chr13:10286:G:T, MB-REC-01:chr13:12515:C:T, MB-REC-01:chr13:12495:G:C, MB-REC-01:chr13:76949:C:T, MB-REC-01:chr13:127964:G:A, MB-REC-01:chr13:149501:C:T, MB-REC-01:chr14:39319:C:A, MB-REC-01:chr17:187629:C:T, MB-REC-01:chr21:121157:C:G, MB-REC-01:chr21:121158:G:T, MB-REC-01:chr21:143455:G:T, MB-REC-01:chr21:153390:C:T, MB-REC-01:chr22:39552:A:C, MB-REC-01:chr22:34863:C:A, MB-REC-01:chr22:28264:T:C, MB-REC-01:chr22:32050:T:G, MB-REC-01:chr22:33013:A:G, MB-REC-01:chr22:20884:A:C, MB-REC-01:chr22:49195800:A:C, MB-REC-01:chr22:19237933:A:G, MB-REC-01:chr22:19719682:C:A
  MB-REC-01:chr7:33037788:T:G, MB-REC-01:chr9:57493:C:G, MB-REC-01:chr9:58177:C:T, 
MB-REC-01:chr9:65293:G:A, MB-REC-01:chr13:10286:G:T, MB-REC-01:chr13:12515:C:T,
MB-REC-01:chr13:12495:G:C, MB-REC-01:chr13:76949:C:T, MB-REC-01:chr13:127964:G:A,
MB-REC-01:chr13:149501:C:T, MB-REC-01:chr14:39319:C:A, MB-REC-01:chr17:187629:C:T,
MB-REC-01:chr21:121157:C:G, MB-REC-01:chr21:121158:G:T, MB-REC-01:chr21:143455:G:T, 
MB-REC-01:chr21:153390:C:T, MB-REC-01:chr22:39552:A:C, MB-REC-01:chr22:34863:C:A, 
MB-REC-01:chr22:28264:T:C, MB-REC-01:chr22:32050:T:G, MB-REC-01:chr22:33013:A:G, 
MB-REC-01:chr22:20884:A:C, MB-REC-01:chr22:49195800:A:C, MB-REC-01:chr22:19237933:A:G, 
MB-REC-01:chr22:19719682:C:A
## The context sequence is taken from the BSgenome.Hsapiens.UCSC.hgX::Hsapiens 
#' object. Therefore the coordinates must correspond to the human hgX assembly. 
#' object.Thereforethe coordinates must correspond to the human hgX assembly. 
#' Default is set to the UCSC hg19 assembly, which corresponds to the GRCh37 
#' assembly. If another assembly is required, it must already be present in the 
#' R workspace and fed as a parameter. This method will translate chromosome 
#' names from other versions of the assembly like NCBI or Ensembl. For instance,
#' the following transformation will be done: "1" -> "chr1"; "MT" -> "chrM"; 
#' "GL000245.1" -> "chrUn_gl000245"; etc.
#' 
## Next step will be to remove all errors while using HG38 and check if the context is right. 
## Next step will be to remove all errors while using HG38 and check if the context is right.

##remval of all the bases that doesnot match context

 
Test8_Remove_Context_HG19 <- read_csv("~/Desktop/Initial Screen/Reading_files_R/Test8(Remove)Context_HG19.csv")
 View(Test8_Remove_Context_HG19)
 Test8.1.2<- as.data.frame(Test8_Remove_Context_HG19)
sigs.input = mut.to.sigs.input(mut.ref = Test8.1.2, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg19)

Test9.1.2<- as.data.frame(Test9_Remove_Context_HG19)
sigs.input = mut.to.sigs.input(mut.ref = Test9.1.2, sample.id = "Sample",
                               chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
                                 BSgenome.Hsapiens.UCSC.hg19)
View(sigs.input)

whichSignatures(tumor.ref = sigs.input, 
                +                 signatures.ref = signatures.nature2013, 
                +                 sample.id = "MB-REC-01", 
                +                 contexts.needed = TRUE,
                +                 tri.counts.method = 'default')

example <- whichSignatures(tumor.ref = sigs.input,
signatures.ref = signatures.nature2013,
sample.id = "MB-REC-01",
contexts.needed = TRUE,
tri.counts.method = 'default')
plotSignatures(example, sub = 'example')
makePie(example)
plotSignatures(example, sub = 'example')


