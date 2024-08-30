df_progmod  |> 
  select(time, thu_text, thu_url, thu_key) |> 
  filter(!is.na(thu_text)) |> 
  gt(rowname_col = "time") |> 
  tab_row_group(
    label = "Session 1",
    rows = c(1:5)
  ) |> 
  # #  tab_row_group(
  # #    label = "Session 2",
  # #    rows = c(6:10)
  # #  ) |> 
  opt_row_striping(TRUE) |> 
  cols_label(
    time = "Time",
    thu_text = "Thursday",
    thu_key = "Keywords"
  ) |>
   sub_missing(
     columns = c(thu_text, thu_key, thu_url),
     rows = everything(),
     missing_text = "") |> 
  fmt_url(
   columns = thu_url,
    label = "abstract"
  )  |>
   cols_merge(
     columns = c(thu_text, thu_url),
     pattern = "{1} <br> {2}"
   ) |> 
   cols_width(
     time ~ px(100)  )
