# TITLE : read_csv.R
# PURPOSE : transform csv files into .Rda filtes
# HISTORY : Ver1 2019-05-15
library(readr)
library(dplyr)

# read csv files
player_data <- read_csv("../csv/player_data.csv")
players <- read_csv("../csv/Players.csv")
seasons_stats <- read_csv("../csv/Seasons_Stats.csv")

# remove unnecessary colums
players <- select(players, -X1)
seasons_stats <- select(seasons_stats, -X1)

# save as .rda files
save(player_data, file = "../data/player_data.rda")
save(players, file = "../data/players.rda")
save(seasons_stats, file = "../data/seasons_stats.rda")
