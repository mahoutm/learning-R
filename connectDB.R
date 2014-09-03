# to MongoDB
# library(rmongodb) - detail
library(RMongo)

mongo <- mongoDbConnect("zoo", "192.168.50.81", 27017)
output <- dbInsertDocument(mongo, "fox_r", '{"foo": "fox","type":"anymal"}')
output <- dbGetQuery(mongo, "fox_r",'{"foo": "bar"}')
print (output)


# to Postgresql
library(RPostgreSQL)

drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname="elephant",host="192.168.50.82",port=5432,user="fox",password="pw")
koala <- dbGetQuery(con,"select * from koala")
Encoding(koala$contents) <- "UTF-8"
print (koala)
