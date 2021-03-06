# Ancestry PCAs in R 

Set working directories and load pkgs 

```
setwd("~/Desktop/Lice/")
library(ggplot2)
library(ggfortify)
```

## PCA
### Read in data (file with .eigvec extensions, keep in mind there might some editing that needs to be done on the eigvec file to reflect labels of samples)

## PCA of parental populations
```
lice_admxParental <- read.csv("lice_admxParental.csv")
lice_dfParental <- lice_admxParental[c(2, 3)] ## transform to data frame, and pulls out the first two principal components. 
```

```
autoplot(prcomp(lice_dfParental))
autoplot(prcomp(lice_dfParental), data = lice_admxParental, colour = 'Type', main = "Head and body lice ancestry PCA") #Color points according to ancestry/type/speciespca
autoplot(prcomp(lice_dfParental), data = lice_admxParental, colour = 'Type', frame = T, frame.type = 'norm', main = "Head and body lice ancestry PCA clusters")
```

## PCA including crosses 
```
lice_admx <- read.csv("lice_admx.csv")
lice_df <- lice_admx[c(2, 3)] ## transform to data frame and pulls out first 2 components

```
autoplot(prcomp(lice_df)) ##plot first PCAs
autoplot(prcomp(lice_df), data = lice_admx, colour = 'Type', main = "Head and body lice ancestry PCA") ##Color points according to ancestry/type/species
autoplot(prcomp(lice_df), data = lice_admx, colour = 'Type', frame = T, frame.type = 'norm', main = "Head and body lice ancestry PCA clusters")
```