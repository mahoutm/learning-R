#install.packages("twitteR");
#install.packages("tm");
#install.packages("wordcloud")

library(twitteR)
library(ROAuth)
library(RCurl)
library(tm)
library(wordcloud)
library(RColorBrewer)

# OAuth Authorization
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"
consumerKey <- "<INPUT KEY VALUE>"
consumerSecret <- "<INPUT SECRET KEY VALUE>"
twitCred <- OAuthFactory$new(consumerKey=consumerKey,consumerSecret = consumerSecret, requestURL = reqURL, accessURL = accessURL, authURL = authURL)
download.file(url = "http://curl.haxx.se/ca/cacert.pem", destfile = "cacert.pem")
twitCred$handshake(cainfo = "cacert.pem")
save(list='twitCred',file="twitteR_credentials")
registerTwitterOAuth(twitCred)

# Searching Tweets with some keyword.
fox.tweets <- searchTwitter('<INPUT KEYWORD',n=90,cainfo='cacert.pem')
fox.tweets

install.packages("plyr")
library(plyr)
fox.tweets[1]
fox.txt <- laply(fox.tweets,function(t) t$getText())
fox<-as.data.frame(fox.txt)
