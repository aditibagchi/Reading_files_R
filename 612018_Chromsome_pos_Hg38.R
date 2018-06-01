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






