rm(list=ls())
# ##############################
# ###### QUESTION 1 ###########
# #############################
vec1 <- c(60, 23, 17)
res1 <- vec1[1]/vec1[2]^3 - 1 + 2 * vec1[3]^2/vec1[1]
# ##############################
# ###### QUESTION 2 ###########
# #############################
vehiclename <- scan("vehiclename.csv", sep=",", what="character")
rating <- scan("rating.csv", sep=",", what="character")
year <- scan("year.csv", sep=",", what=numeric())
cylinders <- scan("cylinders.csv", sep=",", what=numeric())
vehicleinfo <- data.frame(vehiclename, rating, year, cylinders)             
vehicleinfo
str(vehicleinfo)
# ##############################
# ###### QUESTION 3 ###########
# #############################
vehicleinfo[2, ]
vehicleinfo[1:10, 4]
vehicleinfo[3:7, c(1,4)]
vehicleinfo$rating[1:10]
# ##############################
# ###### QUESTION 4 ###########
# #############################
vehicleinfo$rating <- factor(vehicleinfo[, "rating"], ordered=TRUE, levels=c("Very Poor", "Poor", "Acceptable", 'Good', 'Very Good', 'Excellent'))
str(vehicleinfo)
