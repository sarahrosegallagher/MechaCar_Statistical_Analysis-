library(dplyr)

df <- read.csv("Resources/MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,df))
#Multiple R-squared:  0.7149 => dependent variables predict 71% of mpg
# p-value: 5.35e-11