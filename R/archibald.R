#' Winners of the Archibald Prize for Portraiture
#'
#' The winning paintings and portraits for the Archibald Prize for
#' Portraiture (1921-2023), along with the winners of the associated
#' Packing Room Prize (1991/92-2023), and the People's Choice Award
#' (1988-2023). For the Archibald Prize, the number of finalists in
#' the pool are included. For all prizes, the artist, the subject of
#' the painting, and the title of the painting are also included.
#' The year of award is a character vector due to the fact that in
#' one instance the prize spanned a two-year period from 1991 to 1992.
#'
#' @format ## `archibald`
#' A data frame with 166 rows and 6 columns:
#' \describe{
#'   \item{prize}{Name of the prize awarded}
#'   \item{year}{Year(s) for which the prize was won}
#'   \item{artist}{Name of the artist}
#'   \item{title}{Title of the painting}
#'   \item{subject}{The person depicted in the painting}
#'   \item{n_finalists}{Number of finalists contesting the prize}
#' }
#' @source <https://en.wikipedia.org/wiki/List_of_Archibald_Prize_winners>
"archibald"
