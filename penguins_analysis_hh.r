#loading the data in 
penguins <- read.csv("penguins.csv")

#first statistical analysis
summary_stats <- summary(penguins)

#second statistical Analysis
mass_by_species <- aggregate(body_mass_g ~ species, data = penguins, FUN = mean, na.rm = TRUE)

#third analysis bar chart
png("mass_by_species.png"); barplot(mass_by_species$body_mass_g, names.arg = mass_by_species$species, main = "Average Body Mass by Species", ylab = "Body mass (g)"); dev.off()

#saving the output now
sink("penguins_output.txt")
print(summary_stats)
print(mass_by_species)
sink()

#this is the final code for the assignment! learning github!