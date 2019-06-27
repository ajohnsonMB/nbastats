library(Cairo)
library(rvest)
library(tidyverse)

### utility
selection_years <- function(str) {
  # split string
  str_array <- str_split(str, ";", simplify = TRUE) # split by ";"
  str_array <- gsub(" ", "", str_array) # remove space
  str_array <- gsub(",", "", str_array) # remove camma
  # number of elements of selection years
  ncol <- ncol(str_array)
  selection_years <- c()
  for(i in 1:ncol) {
    # single year(e.g 1997) or multiple years(e.g. 1997-2000)
    is_single <- !(str_detect(str_array[1, i], pattern = "-"))
    # swith the way of making vector by is_single
    if (is_single) {
      selection_years <- append(selection_years, as.integer(str_array[1, i]))
    } else {
      start <- as.integer(str_split(str_array[1, i], "-", simplify = TRUE)[1, 1])
      end <- as.integer(str_split(str_array[1, i], "-", simplify = TRUE)[1, 2])
      selection_years <- append(selection_years, start:end)
    }
  }
  selection_years
}

### get data from web
# set url
url <- "https://en.wikipedia.org/wiki/List_of_NBA_All-Stars"

# get html file
h <- read_html(url)

# parse html
table <- h %>%
  html_nodes("table")

# pick up all-star players table
allstars <- table[[2]] %>%
  html_table()

### transform data
# change names
names(allstars) <- c("Player", "counts", "Selections", "Notes", "Reference")

# clean data
# https://stackoverflow.com/questions/2479059/how-can-i-add-an-en-dash-to-a-plot-in-r
allstars <- allstars %>%
  mutate(names = str_extract(Player, "[A-Za-z'. -]+"),
         years = gsub("\U2013", "-", Selections))


# fix irregular(non-English alphabet) name players
allstars[244, "names"] <- "Zydrunas Ilgauskas"
allstars[324, "names"] <- "Goran Dragic"
allstars[355, "names"] <- "Nikola Jokic"
allstars[387, "names"] <- "Kristaps Porzingis"
allstars[414, "names"] <- "Nikola Vucevic"

### create data table
names <- allstars["names"]
years <- allstars["years"]

# initialise allstars
allstars <- data.frame(name = NULL, year = NULL)

# pick up selection years from years
# , and combine it with names
n <- nrow(names)
for(i in 1:n) {
  n <- names[i, 1]
  ys <- selection_years(years[i, 1])
  l <- length(ys)
  ns <- rep(n, l)
  allstars <- rbind(allstars, data.frame(name = ns, year = ys))
}

# save as .rda file
save(allstars, file = "../data/allstars.rda")
