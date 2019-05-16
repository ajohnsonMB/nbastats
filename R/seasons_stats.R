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
#'   \item{TS\%}{True Shooting Percentage; the formula is PTS / (2 * TSA). True shooting percentage is a measure of shooting efficiency that takes into account field goals, 3-point field goals, and free throws.}
#'   \item{3PAr}{NA}
#'   \item{FTr}{NA}
#'   \item{ORB\%}{Offensive Rebound Percentage (available since the 1970-71 season in the NBA); the formula is 100 * (ORB * (Tm MP / 5)) / (MP * (Tm ORB + Opp DRB)). Offensive rebound percentage is an estimate of the percentage of available offensive rebounds a player grabbed while he was on the floor.}
#'   \item{DRB\%}{Defensive Rebound Percentage (available since the 1970-71 season in the NBA); the formula is 100 * (DRB * (Tm MP / 5)) / (MP * (Tm DRB + Opp ORB)). Defensive rebound percentage is an estimate of the percentage of available defensive rebounds a player grabbed while he was on the floor.}
#'   \item{TRB\%}{Total Rebound Percentage (available since the 1970-71 season in the NBA); the formula is 100 * (TRB * (Tm MP / 5)) / (MP * (Tm TRB + Opp TRB)). Total rebound percentage is an estimate of the percentage of available rebounds a player grabbed while he was on the floor.}
#'   \item{AST\%}{Assist Percentage (available since the 1964-65 season in the NBA); the formula is 100 * AST / (((MP / (Tm MP / 5)) * Tm FG) - FG). Assist percentage is an estimate of the percentage of teammate field goals a player assisted while he was on the floor.}
#'   \item{STL\%}{Steal Percentage (available since the 1973-74 season in the NBA); the formula is 100 * (STL * (Tm MP / 5)) / (MP * Opp Poss). Steal Percentage is an estimate of the percentage of opponent possessions that end with a steal by the player while he was on the floor.}
#'   \item{BLK\%}{Block Percentage (available since the 1973-74 season in the NBA); the formula is 100 * (BLK * (Tm MP / 5)) / (MP * (Opp FGA - Opp 3PA)). Block percentage is an estimate of the percentage of opponent two-point field goal attempts blocked by the player while he was on the floor.}
#'   \item{TOV\%}{Turnover Percentage (available since the 1977-78 season in the NBA); the formula is 100 * TOV / (FGA + 0.44 * FTA + TOV). Turnover percentage is an estimate of turnovers per 100 plays.}
#'   \item{USG\%}{Usage Percentage (available since the 1977-78 season in the NBA); the formula is 100 * ((FGA + 0.44 * FTA + TOV) * (Tm MP / 5)) / (MP * (Tm FGA + 0.44 * Tm FTA + Tm TOV)). Usage percentage is an estimate of the percentage of team plays used by a player while he was on the floor.}
#'   \item{blanl}{NA}
#'   \item{OWS}{Offensive Win Shares.} \cr
#'     \url{https://www.basketball-reference.com/about/ws.html} \cr
#'   \item{DWS}{Defensive Win Shares.} \cr
#'     \url{https://www.basketball-reference.com/about/ws.html} \cr
#'   \item{WS}{Win Shares.An estimate of the number of wins contributed by a player.} \cr
#'     \url{https://www.basketball-reference.com/about/ws.html} \cr
#'   \item{WS/48}{Win Shares Per 48 Minutes (available since the 1951-52 season in the NBA); an estimate of the number of wins contributed by the player per 48 minutes (league average is approximately 0.100). Please see the article Calculating Win Shares for more information.} \cr
#'     \url{https://www.basketball-reference.com/about/ws.html} \cr
#'   \item{blank2}{NA}
#'   \item{OBPM}{NA}
#'   \item{BPM}{Box Plus/Minus (available since the 1973-74 season in the NBA); a box score estimate of the points per 100 possessions that a player contributed above a league-average player, translated to an average team.} \cr
#'     \url{https://www.basketball-reference.com/about/bpm.html} \cr
#'   \item{VORP}{Value Over Replacement Player (available since the 1973-74 season in the NBA); a box score estimate of the points per 100 TEAM possessions that a player contributed above a replacement-level (-2.0) player, translated to an average team and prorated to an 82-game season. Multiply by 2.70 to convert to wins over replacement.} \cr
#'     \url{https://www.basketball-reference.com/about/bpm.html#vorp}
#'   \item{FG}{Field Goals (includes both 2-point field goals and 3-point field goals)}
#'   \item{FGA}{Field Goal Attempts (includes both 2-point field goal attempts and 3-point field goal attempts)}
#'   \item{FG\%}{Field Goal Percentage; the formula is FG / FGA.}
#'   \item{3P}{3-Point Field Goals (available since the 1979-80 season in the NBA)}
#'   \item{3PA}{3-Point Field Goal Attempts (available since the 1979-80 season in the NBA)}
#'   \item{3P\%}{3-Point Field Goal Percentage (available since the 1979-80 season in the NBA); the formula is 3P / 3PA.}
#'   \item{2P}{2-Point Field Goals}
#'   \item{2PA}{2-Point Field Goal Attempts}
#'   \item{2P\%}{2-Point Field Goal Percentage; the formula is 2P / 2PA.}
#'   \item{eFG\%}{Effective Field Goal Percentage; the formula is (FG + 0.5 * 3P) / FGA. This statistic adjusts for the fact that a 3-point field goal is worth one more point than a 2-point field goal. For example, suppose Player A goes 4 for 10 with 2 threes, while Player B goes 5 for 10 with 0 threes. Each player would have 10 points from field goals, and thus would have the same effective field goal percentage (50\%).}
#'   \item{FT}{Free Throws}
#'   \item{FTA}{Free Throw Attempts}
#'   \item{FT\%}{Free Throw Percentage; the formula is FT / FTA.}
#'   \item{ORB}{Offensive Rebounds (available since the 1973-74 season in the NBA)}
#'   \item{DRB}{Defensive Rebounds (available since the 1973-74 season in the NBA)}
#'   \item{TRB}{Total Rebounds (available since the 1950-51 season)}
#'   \item{AST}{Assists}
#'   \item{STL}{Steals (available since the 1973-74 season in the NBA)}
#'   \item{BLK}{Blocks (available since the 1973-74 season in the NBA)}
#'   \item{TOV}{Turnovers (available since the 1977-78 season in the NBA)}
#'   \item{PF}{Personal Fouls}
#'   \item{PTS}{Points}
#' }
#' @docType data
#'
#' @usage data(seasons_stats)
#'
#' @keywords datasets
#'
#' @source
#'   data source \cr
#'   \url{https://www.kaggle.com/drgilermo/nba-players-stats} \cr
#'   data definition \cr
#'   \url{https://www.basketball-reference.com/about/glossary.html}
"seasons_stats"
