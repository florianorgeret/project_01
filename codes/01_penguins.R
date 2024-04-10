### ### ### ### ### ### ### ###
# Demo on reproducibility
# Florian Orgeret
# Postdoctoral Researcher
# Swiss Ornithological Institute
# Ecological Research Group
# Last version: 08/04/2024
#
# Aim: this script is an example on how to load and save some data
# from the palmerpenguins r package
# and provide an example on how to organize folders to allow reproducibility

# Load the package
library(palmerpenguins)
?palmerpenguins
?penguins

# Load the penguins dataset
data("penguins", package = "palmerpenguins")

# Save the penguins dataset to the data directory
write.csv(penguins, "data/penguins.csv", row.names = FALSE)

# Get basic dataset structure and summary
data_summary <- capture.output({
  print(str(penguins))
  print(summary(penguins))
})

# Save the summary to a text file
writeLines(data_summary, "meta/penguins_summary.txt")

library(ggplot2)
# Create a scatter plot of flipper_length_mm vs body_mass_g
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_point() +
  geom_smooth(aes(group=1), method="lm")+#group=1 to avoid having a regression per species
  theme_bw() +
  labs(title = "Penguin Size Measurement",
       x = "Flipper Length (mm)",
       y = "Body Mass (g)")

# Save the plot to the figures directory
ggsave("figures/penguin_size_plot.png",  width = 8, height = 6, dpi = 300)

# Linear regression model predicting body mass from flipper length
model <- lm(body_mass_g ~ flipper_length_mm, data = penguins)

# Summary of the model
summary(model)

# Save the linear model to the outputs directory
saveRDS(model, "outputs/penguin_model.rds")

# Extract model coefficients and create a table
library(tibble)
model_params <- tibble(Parameter = names(coef(model)),
                       Estimate = coef(model),
                       Std.Error = summary(model)$coefficients[, "Std. Error"],
                       t.value = summary(model)$coefficients[, "t value"],
                       Pr = summary(model)$coefficients[, "Pr(>|t|)"])

# Print the table
print(model_params)

# Optionally, save the table to a CSV file
write.csv(model_params, "outputs/model_parameters.csv", row.names = FALSE)
