lotr_import = function(movie_title, cell_range){
  
  lotr_df = 
    read_excel("data/LotR_Words.xlsx", range = cell_range) |>
    mutate(movie = movie_title) |>
    janitor::clean_names() |>
    pivot_longer(
      female : male,
      names_to = "sex",
      values_to = "words"
    )
  
  return(lotr_df)  
}
