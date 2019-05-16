#' Datasets of NBA players' stats since 1950
#'
#' A dataset of NBA players' stats.
#'
#' @format A data frame with 24,691 rows and 52 variables:
#' \describe{
#'   \item{Year}{Year that the season occurred. Since the NBA season is split over two calendar years, the year given is the last year for that season. For example, the year for the 1999-00 season would be 2000.}
#'   \item{Player}{Name}
#'   \item{position}{Position}
#'   \item{Age}{Player age on February 1 of the given season.}
#'   \item{Tm}{Team}
#'   \item{G}{Games}
#'   \item{GS}{Games Started (available since the 1982 season)}
#'   \item{MP}{Minutes Played (available since the 1951-52 season)}
#'   \item{PER}{Player Efficiency Rating (available since the 1951-52 season), PER is a rating developed by ESPN.com columnist John Hollinger.}
#'   \item{TS%}{True Shooting Percentage; the formula is PTS / (2 * TSA). True shooting percentage is a measure of shooting efficiency that takes into account field goals, 3-point field goals, and free throws.}
#'   \item{3PAr}{NA}
#'   \item{FTr}{NA}
#'   \item{ORB%}{Offensive Rebound Percentage (available since the 1970-71 season in the NBA); the formula is 100 * (ORB * (Tm MP / 5)) / (MP * (Tm ORB + Opp DRB)). Offensive rebound percentage is an estimate of the percentage of available offensive rebounds a player grabbed while he was on the floor.}
#'   \item{DRB%}{Defensive Rebound Percentage (available since the 1970-71 season in the NBA); the formula is 100 * (DRB * (Tm MP / 5)) / (MP * (Tm DRB + Opp ORB)). Defensive rebound percentage is an estimate of the percentage of available defensive rebounds a player grabbed while he was on the floor.}
#'   \item{TRB%}{Total Rebound Percentage (available since the 1970-71 season in the NBA); the formula is 100 * (TRB * (Tm MP / 5)) / (MP * (Tm TRB + Opp TRB)). Total rebound percentage is an estimate of the percentage of available rebounds a player grabbed while he was on the floor.}
#'   \item{AST%}{NA}
#'   \item{TRB%}{NA}
#'   \item{STL%}{NA}
#'   \item{BLK%}{NA}
#'   \item{TOV%}{NA}
#'   \item{USG%}{NA}
#'   \item{blanl}{NA}
#'   \item{OWS}{NA}
#'   \item{DWS}{NA}
#'   \item{WS}{NA}
#'   \item{WS/48}{NA}
#'   \item{blank2}{NA}
#'   \item{OBPM}{NA}
#'   \item{DBPM}{NA}
#'   \item{BPM}{NA}
#'   \item{VORP}{NA}
#'   \item{FG}{NA}
#'   \item{FGA}{NA}
#'   \item{FG%}{NA}
#'   \item{3P}{NA}
#'   \item{3PA}{NA}
#'   \item{3P%}{NA}
#'   \item{2P}{NA}
#'   \item{2PA}{NA}
#'   \item{2P%}{NA}
#'   \item{eFG%}{NA}
#'   \item{FT}{NA}
#'   \item{FTA}{NA}
#'   \item{FT%}{NA}
#'   \item{ORB}{NA}
#'   \item{DRB}{NA}
#'   \item{TRB}{NA}
#'   \item{AST}{NA}
#'   \item{STL}{NA}
#'   \item{BLK}{NA}
#'   \item{TOV}{NA}
#'   \item{PF}{NA}
#'   \item{PTS}{NA}
#' }
#' @docType data
#'
#' @usage data(seasons_stats)
#'
#' @keywords datasets
#'
#' @source
#'   \url{https://www.kaggle.com/drgilermo/nba-players-stats}
#'   \url{https://www.basketball-reference.com/about/glossary.html}
"seasons_stats"
