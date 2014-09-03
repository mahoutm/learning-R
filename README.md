r-analysis
==========

R Analysis Examples

to change java heap size
-- $R_HOME/etc/Rprofile.site
options(java.parameters = c("-Xmx16g","-Dfile.encoding=UTF-8"))
--

to read UTF-8 type
--
f <- file("d:/parser.txt", blocking=F,encoding="UTF-8")
txtLines <- readLines(f)
--
