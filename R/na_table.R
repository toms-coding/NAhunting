
#' Generate a Data Frame of Rows With Missing Values
#'
#' @param A data frame
#'
#' @return A data frame of all rows contain NA in the original.
#'
#' @examples
#' na_table(mtcarNAs)
na_table <- function(x){

  if(is.data.frame(x)){
    x[sort(which(is.na(x), arr.ind = TRUE)[ ,1]), ]
  }else{
    message("This is not a data frame.
            If the object is a single vector you can use is.na()")
  }
}
