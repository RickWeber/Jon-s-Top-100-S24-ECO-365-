library(dplyr)

# data
yearly_charts <- read.csv("yearly_charts.csv")

# Function to get top 5 songs for a given year
get_top_songs <- function(input_year) {
  filtered_data <- yearly_charts %>%
    filter(year == input_year) %>%
    arrange(peak_rank) %>%
    head(5)
  
  return(filtered_data)
}


# Replace '2000' with the year you are interested in
top_songs_for_year <- get_top_songs(2000)
print(top_songs_for_year)
