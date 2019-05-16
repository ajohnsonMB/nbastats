#' Datasets of NBA players' stats since 1950
#'
#' A dataset of NBA players' stats.
#'
#' @format A data frame with 24,691 rows and 52 variables:
#' \describe{
#'   \item{Year}{Year that the season occurred. Since the NBA season is split over two calendar years, the year given is the last year for that season. For example, the year for the 1999-00 season would be 2000.}
#'   \item{Player}{Name}
#'   \item{position}{Position}
#'   \item{Age}{Age; player age on February 1 of the given season.}
#'   \item{Tm}{Team}
#'   \item{G}{Games}
#'   \item{GS}{Games Started (available since the 1982 season)}
#'   \item{MP}{Minutes Played (available since the 1951-52 season)}
#'   \item{PER}{Player Efficiency Rating (available since the 1951-52 season); PER is a rating developed by ESPN.com columnist John Hollinger. In John's words, "The PER sums up all a player's positive accomplishments, subtracts the negative accomplishments, and returns a per-minute rating of a player's performance."}
#'   \item{TS%}{}
#'   \item{3PAr}{}
#'   \item{FTr}{}
#'   \item{ORB%}{}
#'   \item{DRB%}{}
#'   \item{TRB%}{}
#'   \item{AST%}{}
#'   \item{TRB%}{}
#'   \item{STL%}{}
#'   \item{BLK%}{}
#'   \item{TOV%}{}
#'   \item{USG%}{}
#'   \item{blanl}{}
#'   \item{OWS}{}
#'   \item{DWS}{}
#'   \item{WS}{}
#'   \item{WS/48}{}
#'   \item{blank2}{}
#'   \item{OBPM}{}
#'   \item{DBPM}{}
#'   \item{BPM}{}
#'   \item{VORP}{}
#'   \item{FG}{}
#'   \item{FGA}{}
#'   \item{FG%}{}
#'   \item{3P}{}
#'   \item{3PA}{}
#'   \item{3P%}{}
#'   \item{2P}{}
#'   \item{2PA}{}
#'   \item{2P%}{}
#'   \item{eFG%}{}
#'   \item{FT}{}
#'   \item{FTA}{}
#'   \item{FT%}{}
#'   \item{ORB}{}
#'   \item{DRB}{}
#'   \item{TRB}{}
#'   \item{AST}{}
#'   \item{STL}{}
#'   \item{BLK}{}
#'   \item{TOV}{}
#'   \item{PF}{}
#'   \item{PTS}{}
#'   \item{for details, see below.}{}
#' }
#' @docType data
#'
#' @usage data(seasons_stats)
#'
#' @keywords datasets
#'
#' @source \url{https://www.kaggle.com/drgilermo/nba-players-stats}
"seasons_stats"
