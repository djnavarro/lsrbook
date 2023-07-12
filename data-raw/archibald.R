# code to prepare the archibald data

if (FALSE) {
  url <- "https://en.wikipedia.org/wiki/List_of_Archibald_Prize_winners"
  all <- url |>
    polite::bow() |>
    polite::scrape() |>
    rvest::html_nodes("table.wikitable") |>
    purrr::map(rvest::html_table) |>
    purrr::map(janitor::clean_names)

  all[[1]]$subject[all[[1]]$year == "1923"] <- "Violet McInnes"
  all[[2]]$no_of_finalists <- NA_real_
  all[[3]]$no_of_finalists <- NA_real_

  archibald <- all |>
    purrr::map(
      \(x) {
        x |>
          dplyr::rename(n_finalists = no_of_finalists) |>
          dplyr::select(year, artist, title, subject, n_finalists)
    }) |>
    dplyr::bind_rows(.id = "prize") |>
    dplyr::filter(artist != "No Award") |>
    dplyr::mutate(
      prize = dplyr::case_when(
        prize == 1 ~ "Archibald Prize",
        prize == 2 ~ "Packing Room Prize",
        prize == 3 ~ "People's Choice Award",
        TRUE ~ NA_character_
      ),
      artist = artist |>
        stringr::str_replace_all(" +", " ") |>
        stringr::str_replace_all("W B McInnes", "William McInnes")
    )
    readr::write_csv(archibald, here::here("data-raw", "archibald.csv"))
}

archibald <- readr::read_csv(here::here("data-raw", "archibald.csv"))
usethis::use_data(archibald, overwrite = TRUE)
