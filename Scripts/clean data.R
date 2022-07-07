


#source the R folder to load any packages and functions
lapply(dir('R', '*.R', full.names = TRUE), source)


dat <- fread("Input/foraging_data.csv")


dat2 <- dat[ID == "C" | ID == "B"]

dat2$social <- as.factor(dat2$social)
dat2$region <- as.factor(dat2$region)


setnames(dat2, "date", "date2")

#DT[with i, do j, by = group]


dat2[, meanbrowse := mean(browse), by = ID]

saveRDS(dat2, "Output/cleaned.rds")

