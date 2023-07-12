#' "The Great Southern Slam" 2022 Roller Derby Tournament
#'
#' Results from an inter-league roller derby tournament held in Adelaide,
#' Australia in June 2022. "The Great Southern Slam" hosted teams from
#' a large number of roller derby leagues in Australia. The listed teams
#' are "travel" teams that draw from teams within one or more of the local
#' leagues. Team names are listed by the league (or leagues) that fielded
#' the team. The informal name of the team is included in parentheses.
#' Teams are listed as a "home_team" and a "visitor_team" only as a
#' convention: the first listed team on the schedule is designated as
#' "home", and the second listed team is "visitor". However, since the
#' tournament was hosted at the Adelaide Showground and most teams came
#' from interstate to attend, this is purely a convention.
#'
#' @format ## `southern_slam`
#' A data frame with 43 rows and 11 columns:
#' \describe{
#'   \item{time}{Time of the bout, in Australian Central Standard Time}
#'   \item{date}{Date of the bout}
#'   \item{home_team}{Name of the "home" team for the bout}
#'   \item{home_score}{Score recorded by the "home" team}
#'   \item{visitor_team}{Name of the "visitor" team for the bout}
#'   \item{visitor_score}{Score recorded by the "visitor" team}
#'   \item{margin}{Winning margin for the bout}
#'   \item{track}{Number of the track on which the bout took place}
#'   \item{division}{Division in which the bout belongs}
#'   \item{pool}{Pool in which the bout belongs}
#'   \item{type}{Specifies what type of bout it was: "pool", "qualifying final", "consolation round", or "grand final"}
#' }
#' @source <http://greatsouthernslam.com.au/>
"southern_slam"
