library("maftools", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
Maf_example <- read.maf(maf = "~/Desktop/Data_Files/EGAD00001000946_reduced_maf_final.txt")
trinucleotideMatrix(Maf_example, ref_genome = "~/Desktop/Data_Files/Ref_Genome/ucsc.hg19.fasta.txt", prefix = NULL, add = TRUE,
                    ignoreChr = NULL, useSyn = TRUE, fn = NULL)

##Error
reading ~/Desktop/Data_Files/Ref_Genome/ucsc.hg19.fasta.txt (this might take few minutes)..
Extracting 5' and 3' adjacent bases..
Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
                  solving row 272681: 'allow.nonnarrowing' is FALSE and the supplied start (149004580) is > refwidth + 1
                
                
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


##Results: 
$weights
Signature.1A Signature.1B Signature.2 Signature.3 Signature.4 Signature.5 Signature.6
MB-REC-01            0   0.09118762           0   0.3260892           0           0           0
Signature.7 Signature.8 Signature.9 Signature.10 Signature.11 Signature.12 Signature.13
MB-REC-01           0   0.2541209           0            0   0.07218031            0            0
Signature.14 Signature.15 Signature.16 Signature.17 Signature.18 Signature.19 Signature.20
MB-REC-01            0            0            0            0            0            0            0
Signature.21 Signature.R1 Signature.R2 Signature.R3 Signature.U1 Signature.U2
MB-REC-01            0            0            0            0   0.07606793            0
$tumor
A[C>A]A    A[C>A]C     A[C>A]G    A[C>A]T    C[C>A]A    C[C>A]C     C[C>A]G    C[C>A]T
MB-REC-01 0.02031816 0.02976847 0.003622618 0.01716806 0.01779808 0.01575051 0.002362577 0.02378327
G[C>A]A    G[C>A]C     G[C>A]G    G[C>A]T    T[C>A]A     T[C>A]C     T[C>A]G    T[C>A]T
MB-REC-01 0.0124429 0.01323043 0.001890061 0.01008033 0.01417546 0.009765317 0.001732556 0.02094818
A[C>G]A     A[C>G]C     A[C>G]G     A[C>G]T     C[C>G]A     C[C>G]C     C[C>G]G
MB-REC-01 0.008347771 0.004882659 0.001575051 0.007875256 0.006615215 0.004882659 0.001102536
C[C>G]T    G[C>G]A    G[C>G]C     G[C>G]G    G[C>G]T     T[C>G]A    T[C>G]C
MB-REC-01 0.006300205 0.01590802 0.01669554 0.004095133 0.01023783 0.008662782 0.00645771
T[C>G]G    T[C>G]T    A[C>T]A   A[C>T]C    A[C>T]G    A[C>T]T   C[C>T]A    C[C>T]C
MB-REC-01 0.001260041 0.01023783 0.01732556 0.0124429 0.01795558 0.02094818 0.0122854 0.01827059
C[C>T]G    C[C>T]T    G[C>T]A   G[C>T]C    G[C>T]G    G[C>T]T    T[C>T]A    T[C>T]C
MB-REC-01 0.01275791 0.01937313 0.01779808 0.0154355 0.01449047 0.02189321 0.01323043 0.02283824
T[C>T]G    T[C>T]T     A[T>A]A     A[T>A]C     A[T>A]G    A[T>A]T     C[T>A]A
MB-REC-01 0.008032761 0.02850843 0.006300205 0.005355174 0.007560246 0.01275791 0.009450307
C[T>A]C     C[T>A]G    C[T>A]T     G[T>A]A     G[T>A]C     G[T>A]G     G[T>A]T
MB-REC-01 0.007717751 0.009765317 0.01449047 0.004095133 0.003622618 0.005355174 0.005670184
T[T>A]A     T[T>A]C     T[T>A]G    T[T>A]T    A[T>C]A     A[T>C]C     A[T>C]G
MB-REC-01 0.009607812 0.004567648 0.003307607 0.01291542 0.01606552 0.007875256 0.007560246
A[T>C]T     C[T>C]A    C[T>C]C     C[T>C]G    C[T>C]T     G[T>C]A     G[T>C]C
MB-REC-01 0.01449047 0.008032761 0.01291542 0.007402741 0.00708773 0.008820287 0.005512679
G[T>C]G    G[T>C]T    T[T>C]A    T[T>C]C     T[T>C]G    T[T>C]T     A[T>G]A
MB-REC-01 0.005670184 0.01039534 0.01071035 0.01496299 0.006300205 0.01480548 0.003307607
A[T>G]C     A[T>G]G     A[T>G]T     C[T>G]A     C[T>G]C     C[T>G]G     C[T>G]T
MB-REC-01 0.001890061 0.002047567 0.003937628 0.004252638 0.002047567 0.005827689 0.003937628
G[T>G]A     G[T>G]C   G[T>G]G    G[T>G]T    T[T>G]A     T[T>G]C     T[T>G]G
MB-REC-01 0.008977792 0.003307607 0.0214207 0.02724839 0.00708773 0.004095133 0.006615215
T[T>G]T
MB-REC-01 0.009292802

$product
A[C>A]A    A[C>A]C     A[C>A]G    A[C>A]T    C[C>A]A    C[C>A]C      C[C>A]G    C[C>A]T
MB-REC-01 0.01893929 0.01467549 0.001197475 0.01470971 0.01621318 0.01134792 0.0009146071 0.01448062
G[C>A]A     G[C>A]C      G[C>A]G    G[C>A]T    T[C>A]A    T[C>A]C     T[C>A]G
MB-REC-01 0.01239942 0.008242305 0.0004628706 0.01095894 0.01430228 0.01143397 0.001425732
T[C>A]T    A[C>G]A     A[C>G]C    A[C>G]G    A[C>G]T     C[C>G]A     C[C>G]C
MB-REC-01 0.02103616 0.01005384 0.005402822 0.00188656 0.01008302 0.006933251 0.005590326
C[C>G]G     C[C>G]T     G[C>G]A     G[C>G]C      G[C>G]G    G[C>G]T     T[C>G]A
MB-REC-01 0.001795521 0.009883407 0.005375352 0.005781111 0.0006431734 0.00855144 0.007821111
T[C>G]C      T[C>G]G    T[C>G]T    A[C>T]A    A[C>T]C    A[C>T]G    A[C>T]T    C[C>T]A
MB-REC-01 0.00768764 0.0009673796 0.01451649 0.01590015 0.01421468 0.01475454 0.01718479 0.01135231
C[C>T]C     C[C>T]G    C[C>T]T   G[C>T]A    G[C>T]C     G[C>T]G    G[C>T]T    T[C>T]A
MB-REC-01 0.0164795 0.009177983 0.02005711 0.0109291 0.01356506 0.009954876 0.01265658 0.01072018
T[C>T]C     T[C>T]G    T[C>T]T     A[T>A]A     A[T>A]C    A[T>A]G    A[T>A]T
MB-REC-01 0.02053466 0.006813669 0.02107703 0.007343311 0.006359791 0.00678508 0.01077942
C[T>A]A    C[T>A]C     C[T>A]G    C[T>A]T     G[T>A]A   G[T>A]C     G[T>A]G
MB-REC-01 0.005446227 0.00865884 0.008842657 0.01148107 0.003785118 0.0040113 0.005458338
G[T>A]T     T[T>A]A     T[T>A]C     T[T>A]G T[T>A]T    A[T>C]A     A[T>C]C     A[T>C]G
MB-REC-01 0.007104137 0.008047519 0.006794362 0.005976017 0.01199 0.01256758 0.006041096 0.009768951
A[T>C]T     C[T>C]A     C[T>C]C    C[T>C]G    C[T>C]T     G[T>C]A     G[T>C]C
MB-REC-01 0.01517952 0.005254151 0.009378709 0.01074631 0.00972335 0.005925282 0.005040541
G[T>C]G     G[T>C]T     T[T>C]A     T[T>C]C     T[T>C]G    T[T>C]T     A[T>G]A
MB-REC-01 0.005370032 0.006614122 0.006818577 0.006880647 0.005517664 0.00970589 0.001724312
A[T>G]C     A[T>G]G     A[T>G]T    C[T>G]A     C[T>G]C     C[T>G]G     C[T>G]T
MB-REC-01 0.0006114548 0.006780076 0.003482554 0.00102187 0.002715302 0.006958506 0.006440792
G[T>G]A    G[T>G]C     G[T>G]G     G[T>G]T     T[T>G]A     T[T>G]C     T[T>G]G
MB-REC-01 0.001270339 0.00181789 0.009085238 0.005086787 0.003125232 0.002933031 0.007925009
T[T>G]T
MB-REC-01 0.008187278

$diff
A[C>A]A    A[C>A]C     A[C>A]G     A[C>A]T     C[C>A]A     C[C>A]C    C[C>A]G
MB-REC-01 0.001378871 0.01509298 0.002425143 0.002458344 0.001584896 0.004402587 0.00144797
C[C>A]T     G[C>A]A     G[C>A]C     G[C>A]G       G[C>A]T       T[C>A]A      T[C>A]C
MB-REC-01 0.00930265 4.34842e-05 0.004988125 0.001427191 -0.0008786083 -0.0001268173 -0.001668651
T[C>A]G       T[C>A]T      A[C>G]A       A[C>G]C       A[C>G]G      A[C>G]T
MB-REC-01 0.0003068246 -8.798003e-05 -0.001706065 -0.0005201634 -0.0003115086 -0.002207766
C[C>G]A       C[C>G]C       C[C>G]G      C[C>G]T    G[C>G]A    G[C>G]C    G[C>G]G
MB-REC-01 -0.0003180363 -0.0007076676 -0.0006929853 -0.003583202 0.01053266 0.01091443 0.00345196
G[C>G]T      T[C>G]A     T[C>G]C      T[C>G]G      T[C>G]T     A[C>T]A      A[C>T]C
MB-REC-01 0.001686393 0.0008416702 -0.00122993 0.0002926613 -0.004278653 0.001425409 -0.001771776
A[C>T]G     A[C>T]T      C[C>T]A     C[C>T]C     C[C>T]G       C[C>T]T    G[C>T]A
MB-REC-01 0.003201039 0.003763389 0.0009330891 0.001791092 0.003579931 -0.0006839841 0.00686898
G[C>T]C     G[C>T]G     G[C>T]T     T[C>T]A     T[C>T]C     T[C>T]G     T[C>T]T
MB-REC-01 0.001870439 0.004535595 0.009236634 0.002510246 0.002303579 0.001219092 0.007431393
A[T>A]A      A[T>A]C      A[T>A]G     A[T>A]T    C[T>A]A       C[T>A]C      C[T>A]G
MB-REC-01 -0.001043107 -0.001004617 0.0007751654 0.001978498 0.00400408 -0.0009410897 0.0009226603
C[T>A]T      G[T>A]A      G[T>A]C       G[T>A]G      G[T>A]T     T[T>A]A      T[T>A]C
MB-REC-01 0.003009402 0.0003100149 -0.000388682 -0.0001031643 -0.001433953 0.001560294 -0.002226714
T[T>A]G      T[T>A]T     A[T>C]A     A[T>C]C      A[T>C]G       A[T>C]T    C[T>C]A
MB-REC-01 -0.002668409 0.0009254211 0.003497937 0.001834159 -0.002208706 -0.0006890442 0.00277861
C[T>C]C      C[T>C]G     C[T>C]T     G[T>C]A      G[T>C]C     G[T>C]G     G[T>C]T
MB-REC-01 0.003536711 -0.003343574 -0.00263562 0.002895005 0.0004721386 0.000300152 0.003781215
T[T>C]A     T[T>C]C      T[T>C]G     T[T>C]T     A[T>G]A     A[T>G]C      A[T>G]G
MB-REC-01 0.003891771 0.008082339 0.0007825406 0.005099592 0.001583296 0.001278607 -0.004732509
A[T>G]T     C[T>G]A       C[T>G]C      C[T>G]G      C[T>G]T     G[T>G]A     G[T>G]C
MB-REC-01 0.000455074 0.003230769 -0.0006677355 -0.001130816 -0.002503164 0.007707453 0.001489718
G[T>G]G   G[T>G]T     T[T>G]A     T[T>G]C      T[T>G]G     T[T>G]T
MB-REC-01 0.01233546 0.0221616 0.003962498 0.001162102 -0.001309794 0.001105524

$unknown
[1] 0.1803541

write.csv(sigs.input, "sigs_input_exampe.csv")


