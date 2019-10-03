# occupation_data project
# 2019 10 03

# libraries
# library(readxl) # added to import excel file, but rdata file already exists
library(janitor)
library(tidyverse)

# import data
load("occupation_data.RData")


#clean variable names, via janitor package
names(occupation)
occupation <- clean_names(occupation)

# create a list of the variable names
occ_names <- names(occupation)

# see variable names
occ_names

# Can we change the first variable name?
occ_names[1] <- "occ_title"

# create a vector of names
occ_names_new <- c("occ_title","occ_code","occ_type","emp_2018","emp_2028",
                   "emp_ch_num","emp_ch_per","self_emp_per","occ_openings",
                   "median_wage","entry_edu","work_exp","otj_training")

# set names to the data
names(occupation) <- occ_names_new

# see variable names now
names(occupation)

