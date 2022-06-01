library(dplyr)


#DELIVERABLE 1
mecha_df <- read.csv("Resources/MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD ,mecha_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, mecha_df))
#Multiple R-squared:  0.7149 => dependent variables predict 71% of mpg
# p-value: 5.35e-11

#DELIVERABLE 2
suspension_df <- read.csv("Resources/Suspension_Coil.csv")

total_summary <- suspension_df %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), 
            Variance = var(PSI), SD = sd(PSI), 
            .groups = "keep" )

lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), 
            Variance = var(PSI), SD = sd(PSI), 
            Vehicle_Count = n(),
            .groups = "keep" )

#DELIVERABLE 3
t.test(suspension_df$PSI,
       mu=1500)

#result: p-value p-value = 0.06028 => fail to reject null, two means are statistically similar 

#Lot 1
t.test(suspension_df$PSI, 
       mu=1500, 
       subset = Manufacturing_Lot %in% "Lot 1" )
#result: p-value p-value = 0.06028 => fail to reject null, two means are statistically similar 

#Lot 2
t.test(suspension_df$PSI, 
       mu=1500, 
       subset = Manufacturing_Lot %in% "Lot2" )
#result: p-value p-value = 0.06028 => fail to reject null, two means are statistically similar 


#Lot 3
t.test(suspension_df$PSI, 
       mu=1500, 
       subset = M[100:150])
#result: p-value p-value = 0.06028 => fail to reject null, two means are statistically similar 
















