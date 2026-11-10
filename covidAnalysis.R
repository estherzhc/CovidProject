g <- ggplot(data = dDate) +
  geom_line(mapping = aes(x = t, y = H), color = "red") +
  scale_y_log() +
  scale_x_date(
    date_breaks = "1 month",
    date_minor_breaks = "1 week",
    date_labels = "%B"
  ) +
  labs(
    title = "Hospital beds required (Sydney 2020)",
    x = "Date",
    y = "Beds"
  )