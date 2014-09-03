library(NLP)
library(tm)
library(SnowballC)

# source directory
lords <- Corpus (DirSource("<INPUT SOURCE DIRECTORY>"))
inspect(lords)
lords <- tm_map(lords, stripWhitespace)
lords <- tm_map(lords, PlainTextDocument)
lords <- tm_map(lords, removeWords, stopwords("english"))
lords <- tm_map(lords, stemDocument)
wordcloud(lords, scale=c(5,0.5), max.words=100, random.order=FALSE,
          rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))

# control words
lords <- tm_map(lords, removeWords, c("textbook","book"))
