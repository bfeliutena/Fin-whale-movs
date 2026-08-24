# ==============================================================================
# Script: hDCRWS.R
# Purpose: Fits a state-space model to filtered Argos tracking data to 
#          estimate fin whale movement paths and behavioural states
# 
# Manuscript section: Methods 2.3.1. "Hierarchical switching state-space model";
#                             generates results showed in Figure 2 and Figure 3.
#
# Input:  data/data7w.csv
# Output: outputs/Supplementary Information (SI).pdf, Figure S1
#
# Author: Blanca Feliu-Tena & Eduardo J. Belda
# Date created: 2025-08-23
# R version: 4.3.1
# ==============================================================================
# 1. Load packages ------------------------------------------------------------
library(readr)
library(rgdal)
library(rworldxtra)
library(latticeExtra)
library(dplyr)
library(lubridate)
library(rjags)
library(bsam)
library(here)

# 2. Load data ------------------------------------------------------------
# 
here::here()
data <- read_delim("data7w.csv", delim = ",",
                   escape_double = FALSE, 
                   col_types = cols(lc = col_factor(levels = c("3", "2", "1", "0", "A", "B"))), trim_ws = TRUE)
head(data)
#View(data)
#table(data$lc)

# 3. Data cleaning / filtering ------------------------------------------------------------
data <- data[!is.na(data$lc),] # remove NaN from lc column
data$id<- as.character(data$id) # change variable type of id column
data$lc<- as.ordered(data$lc) # change variable type of lc column
head(data)
# Remove duplicates
sum(duplicated(data$date)) # checking how many duplicates are contained in the data
data<-data[!duplicated(data$date),] # deleting duplicated data
sum(duplicated(data$date)) # checking how many duplicates are contained in the data
head(data)
#str(data)
plot(data$lon, data$lat)
# 4. Model fitting ------------------------------------------------------------
# State-space model following Jonsen et al. (2005, 2007, 2013)
fit.s121_202508_1 <- fit_ssm(data, model = "hDCRWS", tstep = 0.17, adapt = 100000, samples = 80000, thin = 10, span = 0.2)

# 5. View and Export results ------------------------------------------------------------
# 5.1. View
diag_ssm(fit.s121_202508_1)
summary(fit.s121_202508_1)
str(fit.s121_202508_1)
map_ssm(fit.s121_202508_1)
plot_fit(fit.s121_202508_1)

# 5.2. Export
get_summary(fit.s121_202508_1, file="fit.s121_202508_1.csv")
