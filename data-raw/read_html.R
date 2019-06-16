# TITLE : read_html.R
# PURPOSE : get salary data from web
# HISTORY : Ver1 2019-06-16
library(rvest)
library(tidyverse)

# url(domain)
url_domain <- "https://hoopshype.com/salaries/players/"

# get_html function
# param season : NBA season
get_html <- function(season) {
  url <- paste0(url_domain, season)
  # get html
  h <- read_html(url)
  # parse html
  tab <- h %>%
    html_nodes("table")
  # get salary table from tab
  table <- tab[[1]] %>%
    html_table()
  # create data frame
  table <- table %>%
    mutate(n = row_number(),
           season = season,
           name = X2,
           salary = X3,
           salary_adj = X4) %>%
    filter(n != 1) %>%
  select(season, name, salary, salary_adj)
}

# initialise data frame
salaries <- data.frame()

# repeat get_html function and add salary table into salaries
salaries <- rbind(salaries,
                  get_html("2017-2018"),
                  get_html("2016-2017"),
                  get_html("2015-2016"),
                  get_html("2014-2015"),
                  get_html("2013-2014"),
                  get_html("2012-2013"),
                  get_html("2011-2012"),
                  get_html("2010-2011"),
                  get_html("2009-2010"),
                  get_html("2008-2009"),
                  get_html("2007-2008"),
                  get_html("2006-2007"),
                  get_html("2005-2006"),
                  get_html("2004-2005"),
                  get_html("2003-2004"),
                  get_html("2002-2003"),
                  get_html("2001-2002"),
                  get_html("2000-2001"))

# save as .rda file
save(salaries, file = "../data/salaries.rda")
