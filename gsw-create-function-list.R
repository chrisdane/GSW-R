## Create table entries for the "documentation" tab of the gsw webpage
lines <- readLines("~/GSW-R/R/gsw.R")
functions <- lines[grep("^[^#].*function*", lines)]
functions <- functions[-grep("argfix", functions)]
names <- gsub(" .*", "", functions)
args <- gsub(".*<-\\s*function","", functions)
urls <- paste("http://www.teos-10.org/pubs/gsw/html/", names, ".html", sep="")
items <- paste('<li><code><a href="', urls, "\">", names, args, "</code>", sep="")
cat("<ul>\n")
for (item in items)
    cat(item, "\n")
cat("</ul>\n")

