#' mean_and_sd
#'
#'This func computes mean and sd of an input vector
#'
#' @param x input numeric vector
#'
#' @returns dataframe with mean and sd
mean_and_sd = function(x){
  
  return_df = 
    tibble(
      mean = mean(x),
      sd = sd(x)
    )
  return(return_df)
}