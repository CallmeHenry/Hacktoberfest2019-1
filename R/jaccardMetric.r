test <- read.csv("")
train <- read.csv("")
 jaccard <- function(s1, s2) {
 s1 <- paste("#",s1, "#", sep="")
 s2 <- paste("#", s2, "#", sep="")
 s1vec <- c()
 s2vec <- c()
 s1length <- nchar(s1)
 s2length <- nchar(s2)
 for(i in 2:s1length-1) {
 x <- substr(s1, i, i+1)
 s1vec <- c(s1vec, x)
 }
 for(i in 2:s2length-1) {
 x <- substr(s2, i, i+1)
 s2vec <- c(s2vec, x)
 }
 print(s1vec)
 print(s2vec)
 intersect <- intersect(s1vec, s2vec)
 union <- union(s1vec, s2vec)
 print(intersect(s1vec, s2vec))
 print(union(s1vec, s2vec))
 Score <- length(intersect) / length(union)
 return(Score)
 }
 jaccard(test$Name[1], train$Name[1])

