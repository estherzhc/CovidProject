g <- ggplot(data = dDate) +D
  geom_line(mapping = aes(x = t, y = H), color = "red") +
  scale_y_log() +=
  geom_line(mapping = aes(x = t, y = H, color = "Hospitalised")) +
  geom_line(mapping = aes(x = t, y = C, color = "Critical")) +
  geom_line(mapping = aes(x = t, y = D, color = "Dead")) +
  scale_y_sqrt() +

  scale_x_date(
    date_breaks = "1 month",
    date_minor_breaks = "1 week",
    date_labels = "%B"
  ) +
  labs(
    title = "Hospital beds required (Sydney 2020)",
    x = "Date",
    y = "Count",
    color = "State"
  )

print(g)
