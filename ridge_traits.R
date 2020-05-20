## Author: Jelena H. Pantel
## Date: 20-05-2020
## Task: Create a density plot of multimodal trait distributions over time using ggridges

## Libraries
library(ggplot2)
library(ggridges)

## Load data
load('ridge_traits.RData')
## Data description
## 'patch1_trait' is a record of all individuals in a simulation of trait evolution over time (generated separately using adaptive dynamics in the presence of directional environmental change). For each individual, trait value (trait_val), generation (gen), and patch (patch - always = 1) is recorded.

## 'env' is a record of the local optimum trait value each generation (it gives the black line on the plot)

## Generate plot
p <- ggplot(patch1_trait, aes(x = trait_val, y = gen, group = gen)) + geom_density_ridges(rel_min_height = 0.01,fill="lightblue") + geom_point(aes(x=p1,y=gen),data=env,shape = ".") + xlim(floor(min(patch1_trait$trait_val)),5) + theme(axis.title.x=element_blank(),axis.text.x=element_blank(),axis.ticks.x=element_blank())

## Render plot
p