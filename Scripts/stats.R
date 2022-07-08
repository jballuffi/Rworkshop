# analysis script

# #source the R folder to load any packages and functions
# lapply(dir('R', '*.R', full.names = TRUE), source)

source("R/packages.R")




dat <- readRDS("Output/cleaned.rds")


mod <- lm(dat$browse ~ dat$temp)
