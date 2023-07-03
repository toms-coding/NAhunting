

mtcarNAs <- read_csv("mtcarNAs.csv")

na_table <- function(x){

  if(is.data.frame(x)){
    x[sort(which(is.na(x), arr.ind = TRUE)[ ,1]), ]
  }else{
    message("This is not a data frame.
            If the object is a single vector you can use is.na()")
  }
}

na_table2 <- function(x, row.num = TRUE){

  if(is.data.frame(x)){
    rows <- sort(which(is.na(x), arr.ind = TRUE)[ ,1])
  } else {
    stop("this is not a data frame")
  }
  if(isTRUE(row.num)){
    cbind(rows, x[rows, ])
  } else if(!isTRUE(row.num)){
    x[rows, ]
  }
}

length(which(is.na(mtcarNAs[1:2]), arr.ind = TRUE))

vec <- c(1,2,3,4,5)

na_table2(vec)

na_table2(mtcarNAs, row.num = FALSE)

ncol(mtcarNAs)

rownames_to_column

print(mtcarNAs, n = 35)

na_table(mtcarNAs)

 not_df <- c(1,2,3,4,5,NA)
na_table(not_df)


