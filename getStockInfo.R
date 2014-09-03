# get stock information to yahoo site.
install.packages("fImport")
library(fImport)
s_e <- yahooSeries("005935.KS")
plot(s_e)
