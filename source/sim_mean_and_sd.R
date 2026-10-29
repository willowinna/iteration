#' sin_mean_and_sd
#' 
#' Simulates data and generates a df with mean and df
#'
#' @param n_obs sample size
#' @param mu true mean
#' @param sigma true sd
#'
#' @returns dataframe with mean and sd

sim_mean_sd = function(n_obs, mu, sigma) {
  
  sim_df =
    tibble(
      x = rnorm(n_obs, mu, sigma)
    )
  
  return_df =
  sim_df |>
    summarize(
      mean = mean(x),
      sd = sd(x)
    )
  
  return(return_df)
}