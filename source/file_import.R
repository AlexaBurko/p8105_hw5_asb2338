file_import =
  function(files) {
    
    long_study_df =
      read_csv(str_c("data/data/", files)) |> 
      janitor::clean_names() |> 
      pivot_longer(
        week_1:week_8,
        names_to = "week",
        names_prefix = "week_",
        values_to = "value"
      ) 
    
    return(long_study_df)
    
  }

