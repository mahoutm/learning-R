# extract noun included hangul and show the wordcloud image.

library(KoNLP)
library(RColorBrewer)
library(wordcloud)

f <- file("d:/parser.txt", blocking=F)

txtLines <- readLines(f)
Encoding(txtLines) <- "UTF-8"

nouns <- sapply(txtLines, extractNoun, USE.NAMES=F)
close(f)
wordcount <- table(unlist(nouns))
pal <- brewer.pal(12,"Set3")
pal <- pal[-c(1:2)]
wordcloud(names(wordcount),freq=wordcount,scale=c(6,0.3),min.freq=40,
          random.order=T,rot.per=.1,colors=pal)
