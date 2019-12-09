library("dplyr")
library("ggplot2")

original_df <- read.csv("amazon.csv", stringsAsFactors = FALSE)

amazon_df <- original_df %>%
  group_by(year) %>%
  summarize(total_number = sum(number))

graph <- function() {
  result <- ggplot(data = amazon_df) +
    geom_col(
      mapping = aes(
        x = year,
        y = total_number
      )
    ) +
    labs(
      title = "Years vs. Total number of forest fires",
      x = "Years",
      y = "Total number of forest fires"
    )
  return(result)
}