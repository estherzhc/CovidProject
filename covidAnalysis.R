library("ggplot2")

# load data
d <- read.csv("data/epiSEIHCRD_combAge.csv")

# convert time variable to Date
d$t <- as.Date(d$t, origin = "2020-03-01")

# colour-blind friendly palette
cbbPalette <- c("#000000", "#E69F00", "#56B4E9",
                "#009E73", "#F0E442", "#0072B2",
                "#D55E00", "#CC79A7")

palette(cbbPalette)

dDate <- subset(
  d,
  subset = ((t >= "2020-06-01") & (t <= "2020-12-31"))
)

g <- ggplot(data = dDate) +
  geom_line(mapping = aes(x = t, y = H))

print(g)