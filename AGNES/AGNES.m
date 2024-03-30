# Load required library
library(cluster)

# Read the dataset
data <- read.csv("C:\\Users\\91798\\OneDrive - vit.ac.in\\Desktop\\wine-clustering.csv", header = TRUE)

# Select only the attributes for clustering
attributes <- data[, c("Alcohol", "Malic_Acid", "Ash", "Ash_Alcanity", "Magnesium", 
                       "Total_Phenols", "Flavanoids", "Nonflavanoid_Phenols", 
                       "Proanthocyanins", "Color_Intensity", "Hue", "OD280", "Proline")]

# Perform AGNES clustering
agnes_result <- agnes(attributes, method = "ward")

# Print the clustering result
print(agnes_result)

# Plot dendrogram
plot(agnes_result, which.plot = 2, cex = 0.6)
