# association rules
library(arules)
# drawing a graph to arules
library(arulesViz)
# using SQL
library(sqldf)

data(IncomeESL)

# sampling 100 to proper graph
fox <- head(data.frame(IncomeESL$occupation,IncomeESL$income),100)
names(fox) <- c('work','income')

# remove replication
lion <- sqldf("select income,work from fox group by income,work")
# reckon to income:people and work:products(bought)
lion <- split(lion$work,lion$income)
koala <- as(lion, "transactions")
# histogram
itemFrequencyPlot(koala)
cat <- apriori(koala,parameter = list(support = 0.5, confidence = 0.7))
# Visualization
plot(cat)
plot(cat, method = "grouped")
plot(cat, method = "graph")
# inspection
inspect(cat)

