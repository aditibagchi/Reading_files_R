library("BSgenome.Hsapiens.UCSC.hg38", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
library("deconstructSigs", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
Test8.1 <- as.data.frame(Test8)
sigs.input = mut.to.sigs.input(mut.ref = Test8.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
#Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
#solving row 1196: 'allow.nonnarrowing' is FALSE and the supplied start (242281689) is > refwidth + 1
Test9.1 <- as.data.frame(Test9)
sigs.input = mut.to.sigs.input(mut.ref = Test9.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
#Error in .Call2("solve_user_SEW", refwidths, start, end, width, translate.negative.coord,  : 
#solving row 1196: 'allow.nonnarrowing' is FALSE and the supplied start (242820456) is > refwidth + 1

Test10.1 <- as.data.frame(Test10)
sigs.input = mut.to.sigs.input(mut.ref = Test10.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)


Test11.1 <- as.data.frame(Test11)
sigs.input = mut.to.sigs.input(mut.ref = Test11.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)


Test12.1 <- as.data.frame(Test12)
sigs.input = mut.to.sigs.input(mut.ref = Test12.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)

Test13.1 <- as.data.frame(Test13)
sigs.input = mut.to.sigs.input(mut.ref = Test13.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)

Test14.1 <- as.data.frame(Test14)
sigs.input = mut.to.sigs.input(mut.ref = Test14.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)

Test15.1 <- as.data.frame(Test15)
sigs.input = mut.to.sigs.input(mut.ref = Test15.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)

Test16.1 <- as.data.frame(Test16)
sigs.input = mut.to.sigs.input(mut.ref = Test16.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)

Test17.1 <- as.data.frame(Test17)
sigs.input = mut.to.sigs.input(mut.ref = Test16.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
Test18.1 <- as.data.frame(Test18)
sigs.input = mut.to.sigs.input(mut.ref = Test18.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
Test19.1 <- as.data.frame(Test19)
sigs.input = mut.to.sigs.input(mut.ref = Test19.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
Test20.1 <- as.data.frame(Test20)
sigs.input = mut.to.sigs.input(mut.ref = Test20.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)

Test21.1 <- as.data.frame(Test21)
sigs.input = mut.to.sigs.input(mut.ref = Test21.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
Test22.1 <- as.data.frame(Test22)
sigs.input = mut.to.sigs.input(mut.ref = Test22.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
Test23.1 <- as.data.frame(Test23)
sigs.input = mut.to.sigs.input(mut.ref = Test23.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)
Test24.1 <- as.data.frame(Test24)
sigs.input = mut.to.sigs.input(mut.ref = Test24.1, sample.id = "Sample",
chr = "chr", pos = "pos", ref = "ref", alt = "alt", bsg =
BSgenome.Hsapiens.UCSC.hg38)

## Warning messages:


Check ref bases -- not all matchcontex:
  MB-REC-01:chr1:725841:T:G, MB-REC-01:chr1:815736:A:G, MB-REC-01:chr1:823634:C:T,
MB-REC-01:chr1:2049281:T:C, MB-REC-01:chr1:2852148:T:C, MB-REC-01:chr1:5155501:T:A, 
MB-REC-01:chr1:5225280:G:T, MB-REC-01:chr1:5395209:G:C, MB-REC-01:chr1:5595097:T:G, 
MB-REC-01:chr1:6446728:C:G, MB-REC-01:chr1:6563220:C:A, MB-REC-01:chr1:7300718:A:G, 
MB-REC-01:chr1:9013537:G:T, MB-REC-01:chr1:9155756:C:G, MB-REC-01:chr1:10568900:A:G, 
MB-REC-01:chr1:10876140:G:A, MB-REC-01:chr1:10887712:G:T, MB-REC-01:chr1:11617270:A:T, 
MB-REC-01:chr1:12786246:C:A, MB-REC-01:chr1:12895034:C:G, MB-REC-01:chr1:14960380:C:A, 
MB-REC-01:chr1:15499803:C:T, MB-REC-01:chr1:16870506:G:A, MB-REC-01:chr1:16958388:G:T, 
MB-REC-01:chr1:17045759:A:G, MB-REC-01:chr1:18648056:C:T, MB-REC-01:chr1:19075392:C:T, 
MB-REC-01:chr1:19435323:T:C, MB-REC-01:chr1:20039618:G:A, MB-REC-01:chr1:23589077:C:T, 
MB-REC-01:chr1:25343632:G:A, MB-REC-01:chr1:25751563:C:A, MB-REC-01:chr1:25967685:G:A, 
MB-REC-01:chr1:2 [... truncated]