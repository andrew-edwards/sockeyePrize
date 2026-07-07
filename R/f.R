# Chris's hake function for formatting variables in text
f <- function(x, digits = 0){

  if(is.null(x)){
    return(x)
  }

  format(round(x,
               digits),
         big.mark = ",",
         nsmall = digits)
}
