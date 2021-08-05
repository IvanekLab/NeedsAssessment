#Load Needs assessment data into R
needs <- read.csv("NeedsAssessmentData.csv")

#Change names
needs[needs=="1 -\nNot at all important"] <- "Not at all important [1]"
needs[needs=="2 -\nSlightly important"] <- "Slightly important [2]"

needs[needs=="3 -\nModerately important"] <- "Moderately important [3]"
needs[needs=="4 -\nVery important"] <- "Very important [4]"
needs[needs=="5 -\nExtremely important"] <- "Extremely important [5]"

needs[needs=="Do not know"] <- NA
needs[needs=="1 -\nNot at all concerning"] <- "Not at all concerning [1]"
needs[needs=="2 -\nSlightly concerning"] <- "Slightly concerning [2]"

needs[needs=="3 -\nModerately concerning"] <- "Moderately concerning [3]"
needs[needs=="4 -\nVery concerning"] <- "Very concerning [4]"
needs[needs=="5 -\nExtremely concerning"] <- "Extremely concerning [5]"

needs[needs=="Do not know"] <- NA
needs[needs=="1 -\nNot at all challenging"] <- "Not at all challenging [1]"
needs[needs=="2 -\nSlightly challenging"] <- "Slightly challenging [2]"

needs[needs=="3 -\nModerately challenging"] <- "Moderately challenging [3]"
needs[needs=="4 -\nVery challenging"] <- "Very challenging [4]"
needs[needs=="5 -\nExtremely challenging"] <- "Extremely challenging [5]"

needs[needs=="Do not know"] <- NA
needs[needs=="1 -\nNo risk"] <- "No risk [1]"
needs[needs=="2 -\nLow risk"] <- "Low risk [2]"

needs[needs=="3 -\nModerate risk"] <- "Moderate risk [3]"
needs[needs=="4 -\nHigh risk"] <- "High risk [4]"
needs[needs=="5 - \nVery high risk"] <- "Very high risk [5]"

needs[needs=="Yes"] <- "Yes [1]"
needs[needs=="No"] <- "No [0]"
needs[needs=="Yes, but only partially/ temporarily"] <- "Yes, but only partially/ temporarily [0.5]"

needs[needs=="NA"] <- NA

#Adjust level order
needs$Q13_1 <- factor(needs$Q13_1, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]")) 
needs$Q13_2 <- factor(needs$Q13_2, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]"))
needs$Q13_3 <- factor(needs$Q13_3, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]"))
needs$Q13_4 <- factor(needs$Q13_4, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]"))
needs$Q13_5 <- factor(needs$Q13_5, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]"))
needs$Q13_6 <- factor(needs$Q13_6, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]")) 

needs$Q5_1<-factor(needs$Q5_1, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q5_2<-factor(needs$Q5_2, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]"))
needs$Q5_3<-factor(needs$Q5_3, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]"))
needs$Q5_4<-factor(needs$Q5_4, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]"))
needs$Q5_5<-factor(needs$Q5_5, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q5_6<-factor(needs$Q5_6, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]"))
needs$Q5_7<-factor(needs$Q5_7, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q5_8<-factor(needs$Q5_8, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]"))
needs$Q5_9<-factor(needs$Q5_9, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                          "Very concerning [4]", "Extremely concerning [5]"))
needs$Q5_10<-factor(needs$Q5_10, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                            "Very concerning [4]", "Extremely concerning [5]"))

needs$Q7_1<-factor(needs$Q7_1, levels = c("Not at all challenging [1]", "Slightly challenging [2]", "Moderately challenging [3]",
                                          "Very challenging [4]", "Extremely challenging [5]")) 
needs$Q7_2<-factor(needs$Q7_2, levels = c("Not at all challenging [1]", "Slightly challenging [2]", "Moderately challenging [3]",
                                          "Very challenging [4]", "Extremely challenging [5]")) 
needs$Q7_3<-factor(needs$Q7_3, levels = c("Not at all challenging [1]", "Slightly challenging [2]", "Moderately challenging [3]",
                                          "Very challenging [4]", "Extremely challenging [5]")) 
needs$Q7_4<-factor(needs$Q7_4, levels = c("Not at all challenging [1]", "Slightly challenging [2]", "Moderately challenging [3]",
                                          "Very challenging [4]", "Extremely challenging [5]")) 
needs$Q7_5<-factor(needs$Q7_5, levels = c("Not at all challenging [1]", "Slightly challenging [2]", "Moderately challenging [3]",
                                          "Very challenging [4]", "Extremely challenging [5]")) 

needs$Q27_1<-factor(needs$Q27_1, levels = c("No risk [1]", "Low risk [2]", "Moderate risk [3]",
                                            "High risk [4]", "Very high risk [5]"))
needs$Q27_2<-factor(needs$Q27_2, levels = c("No risk [1]", "Low risk [2]", "Moderate risk [3]",
                                            "High risk [4]", "Very high risk [5]"))
needs$Q27_3<-factor(needs$Q27_3, levels = c("No risk [1]", "Low risk [2]", "Moderate risk [3]",
                                            "High risk [4]", "Very high risk [5]"))
needs$Q27_4<-factor(needs$Q27_4, levels = c("No risk [1]", "Low risk [2]", "Moderate risk [3]",
                                            "High risk [4]", "Very high risk [5]"))
needs$Q27_5<-factor(needs$Q27_5, levels = c("No risk [1]", "Low risk [2]", "Moderate risk [3]",
                                            "High risk [4]", "Very high risk [5]"))
needs$Q27_6<-factor(needs$Q27_6, levels = c("No risk [1]", "Low risk [2]", "Moderate risk [3]",
                                            "High risk [4]", "Very high risk [5]"))

needs$Q29_1<-factor(needs$Q29_1, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                            "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q29_2<-factor(needs$Q29_2, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                            "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q29_3<-factor(needs$Q29_3, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                            "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q29_4<-factor(needs$Q29_4, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                            "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q29_5<-factor(needs$Q29_5, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                            "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q29_6<-factor(needs$Q29_6, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                            "Very concerning [4]", "Extremely concerning [5]")) 
needs$Q29_7<-factor(needs$Q29_7, levels = c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                                            "Very concerning [4]", "Extremely concerning [5]")) 

needs$Q11_1 <- factor(needs$Q11_1, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]")) 
needs$Q11_2 <- factor(needs$Q11_2, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]"))  
needs$Q11_3 <- factor(needs$Q11_3, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]")) 
needs$Q11_4 <- factor(needs$Q11_4, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]")) 
needs$Q11_5 <- factor(needs$Q11_5, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]")) 
needs$Q11_6 <- factor(needs$Q11_6, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                              "Very important [4]", "Extremely important [5]")) 

needs$Q9_1 <- factor(needs$Q9_1, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                            "Very important [4]", "Extremely important [5]"))  
needs$Q9_2 <- factor(needs$Q9_2, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                            "Very important [4]", "Extremely important [5]")) 
needs$Q9_3 <- factor(needs$Q9_3, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                            "Very important [4]", "Extremely important [5]")) 
needs$Q9_4 <- factor(needs$Q9_4, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                            "Very important [4]", "Extremely important [5]"))  
needs$Q9_5 <- factor(needs$Q9_5, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                            "Very important [4]", "Extremely important [5]"))  
needs$Q9_6 <- factor(needs$Q9_6, levels = c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                                            "Very important [4]", "Extremely important [5]")) 

needs$Q20_size <- factor(needs$Q20_size, levels = c("Small", "Medium", "Large")) 

needs$Q34_1 <- factor(needs$Q34_1, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]")) 
needs$Q34_2 <- factor(needs$Q34_2, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]")) 
needs$Q34_3 <- factor(needs$Q34_3, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]")) 
needs$Q34_4 <- factor(needs$Q34_4, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q34_5 <- factor(needs$Q34_5, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q34_6 <- factor(needs$Q34_6, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q34_7 <- factor(needs$Q34_7, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))

needs$Q36_1 <- factor(needs$Q36_1, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q36_2 <- factor(needs$Q36_2, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q36_3 <- factor(needs$Q36_3, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q36_4 <- factor(needs$Q36_4, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q36_5 <- factor(needs$Q36_5, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))

needs$Q38_1 <- factor(needs$Q38_1, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q38_2 <- factor(needs$Q38_2, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q38_3 <- factor(needs$Q38_3, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))
needs$Q38_4 <- factor(needs$Q38_4, levels = c("No [0]", "Yes, but only partially/ temporarily [0.5]", "Yes [1]"))


#Kruskall Wallis/Spearman
#Q5
needs[ , c(1,9:41,48:60, 65:76, 78:81, 85, 94)]
resp<- sapply(needs[ , c(9:41,48:60, 65:76, 78:81, 85)], as.numeric)
resp<- data.frame(resp)
resp<- cbind(resp, needs$Q20_size)

SimMultiCorrData

apply(t(c(resp$Q5_5, resp$`needs$Q20_size`)),1,median)

#Facility size
w <- apply(needs[ , c(9:41,48:60, 65:76, 78:81, 85)], 2, kruskal.test, g=needs$Q20_size, p.adj = "none")
require(plyr)
out <- ldply(w, function(x) c(x$data.name, x$p.value, x$statistic, x$parameter, x$method))
colnames(out)<- c("Response", "Explanatory", "p-value", "Statistic", "df", "Method")
out$Explanatory <- rep("Facility size", 63)
out$`p-value` <- round(as.numeric(out$`p-value`), 3)
out$Statistic <- round(as.numeric(out$Statistic), 3)
out

#Industry
sect <- apply(needs[ , c(9:41,48:60, 65:76, 78:81, 85)], 2, kruskal.test, g=needs$Q1_1, p.adj = "none")
require(plyr)
out1 <- ldply(sect, function(x) c(x$data.name, x$p.value, x$statistic, x$parameter, x$method))
colnames(out1)<- c("Response", "Explanatory", "p-value", "Statistic", "df", "Method")
out1$Explanatory <- rep("Industry sector", 63)
out1$`p-value` <- round(as.numeric(out1$`p-value`), 3)
out1$Statistic <- round(as.numeric(out1$Statistic), 3)
out1

#Reason to select facility
sect <- apply(needs[ , c(9:41,48:60, 65:76, 78:81, 85)], 2, kruskal.test, g=needs$Q43, p.adj = "none")
require(plyr)
out0 <- ldply(sect, function(x) c(x$data.name, x$p.value, x$statistic, x$parameter, x$method))
colnames(out0)<- c("Response", "Explanatory", "p-value", "Statistic", "df", "Method")
out0$Explanatory <- rep("Reason to select facility", 63)
out0$`p-value` <- round(as.numeric(out0$`p-value`), 3)
out0$Statistic <- round(as.numeric(out0$Statistic), 3)
out0

#Proportion of individuals from 50 to 69
sect <- apply(needs[ , c(9:41,48:60, 65:76, 78:81, 85)], 2, kruskal.test, g=needs$Q21_1, p.adj = "none")
require(plyr)
out2 <- ldply(sect, function(x) c(x$data.name, x$p.value, x$statistic, x$parameter, x$method))
colnames(out2)<- c("Response", "Explanatory", "p-value", "Statistic", "df", "Method")
out2$Explanatory <- rep("Prop50-69 years old", 63)
out2$`p-value` <- round(as.numeric(out2$`p-value`), 3)
out2$Statistic <- round(as.numeric(out2$Statistic), 3)
out2

#Proportion of individuals >70 years old
sect <- apply(needs[ , c(9:41,48:60, 65:76, 78:81, 85)], 2, cor.test, y=needs$Q21_2, p.adj = "none")
require(plyr)
out3 <- ldply(sect, function(x) c(x$data.name, x$p.value, x$statistic, x$estimate, x$method))
colnames(out3)<- c("Response", "Explanatory", "p-value", "Statistic", "Estimate", "Method")
out3$Explanatory <- rep("Prop > 70 years old", 63)
out3$`p-value` <- round(as.numeric(out3$`p-value`), 3)
out3$Statistic <- round(as.numeric(out3$Statistic), 3)
out3$Estimate <- round(as.numeric(out3$Estimate), 3)
out3

write.csv(bind_rows(out,out1,out2,out3,out4,out0), "results.csv")

#Dunn test
sect <- apply(needs[ , c(13,16,38,56,65,66,67,69,70,71,74,76,78,80,81)], 2, dunnTest, g=needs$Q20_size, 
              method="bh")
require(plyr)
out5 <- ldply(sect, function(x) c(x$res$Comparison[1], x$res$P.adj[1],
                                  x$res$Comparison[2], x$res$P.adj[2],
                                  x$res$Comparison[3], x$res$P.adj[3]))
colnames(out5)<- c("Variable","Comparison1","p-value1", "Comparison2","p-value2", "Comparison3","p-value3")
out5$`p-value1` <- round(as.numeric(out5$`p-value1`), 4)
out5$`p-value2` <- round(as.numeric(out5$`p-value2`), 4)
out5$`p-value3` <- round(as.numeric(out5$`p-value3`), 4)
out5

#Dunn industry
sect <- apply(needs[ , c(13,28,70, 74,80)], 2, dunnTest, g=needs$Q1_1, 
              method="bh")
require(plyr)
out6 <- ldply(sect, function(x) c(x$res$Comparison[1], x$res$P.adj[1],
                                  x$res$Comparison[2], x$res$P.adj[2],
                                  x$res$Comparison[3], x$res$P.adj[3]))
colnames(out6)<- c("Variable","Comparison1","p-value1", "Comparison2","p-value2", "Comparison3","p-value3")
out6$`p-value1` <- round(as.numeric(out6$`p-value1`), 4)
out6$`p-value2` <- round(as.numeric(out6$`p-value2`), 4)
out6$`p-value3` <- round(as.numeric(out6$`p-value3`), 4)
out6

write.csv(bind_rows(out5,out6), "dunn test.csv")

#Q4 predictor
table(needs$Q4_red, needs$Q5_1)
kruskal.test(needs$Q4_red, needs$Q5_1)

table(needs$Q4_red, needs$Q5_2)
kruskal.test(needs$Q4_red, needs$Q5_2)

table(needs$Q4_red, needs$Q5_3)
kruskal.test(needs$Q4_red, needs$Q5_3)

kruskal.test(needs$Q4_red, needs$Q5_4)

kruskal.test(needs$Q4_red, needs$Q5_5)

kruskal.test(needs$Q4_red, needs$Q5_6)

kruskal.test(needs$Q4_red, needs$Q5_7)

kruskal.test(needs$Q4_red, needs$Q5_8)

kruskal.test(needs$Q4_red, needs$Q5_9)

kruskal.test(needs$Q4_red, needs$Q5_10)

#Q7
table(needs$Q4_red, needs$Q7_1)
kruskal.test(needs$Q4_red, needs$Q7_1)

table(needs$Q4_red, needs$Q7_2)
kruskal.test(needs$Q4_red, needs$Q7_2)

table(needs$Q4_red, needs$Q7_3)
kruskal.test(needs$Q4_red, needs$Q7_3)

kruskal.test(needs$Q4_red, needs$Q7_4)

kruskal.test(needs$Q4_red, needs$Q7_5)

#####Operations/production has been reduced/cut back
kruskal.test(needs$Q4_red, needs$Q9_1)

kruskal.test(needs$Q4_red, needs$Q9_2) ##### Training materials in more languages
median(needs$Q9_2[needs$Q4_red=="Yes [1]"])
median(needs$Q9_2[needs$Q4_red=="No [0]"])

kruskal.test(needs$Q4_red, needs$Q9_3)

kruskal.test(needs$Q4_red, needs$Q9_4) ##### Better and cheaper testing technologies
median(needs$Q9_4[needs$Q4_red=="Yes [1]"])
median(needs$Q9_4[needs$Q4_red=="No [0]"])

kruskal.test(needs$Q4_red, needs$Q9_5)

kruskal.test(needs$Q4_red, needs$Q9_6)

####
kruskal.test(needs$Q4_red, needs$Q11_1)

kruskal.test(needs$Q4_red, needs$Q11_2) 

kruskal.test(needs$Q4_red, needs$Q11_3)

kruskal.test(needs$Q4_red, needs$Q11_4) 

kruskal.test(needs$Q4_red, needs$Q11_5)

kruskal.test(needs$Q4_red, needs$Q11_6)
####
kruskal.test(needs$Q4_red, needs$Q13_1)

kruskal.test(needs$Q4_red, needs$Q13_2) 

kruskal.test(needs$Q4_red, needs$Q13_3)

kruskal.test(needs$Q4_red, needs$Q13_4) 

kruskal.test(needs$Q4_red, needs$Q13_5)

kruskal.test(needs$Q4_red, needs$Q13_6)

####
kruskal.test(needs$Q4_red, needs$Q26_int)

####
kruskal.test(needs$Q4_red, needs$Q27_1)

kruskal.test(needs$Q4_red, needs$Q27_2) 

kruskal.test(needs$Q4_red, needs$Q27_3)

kruskal.test(needs$Q4_red, needs$Q27_4) 

kruskal.test(needs$Q4_red, needs$Q27_5)

kruskal.test(needs$Q4_red, needs$Q27_6)

#####
kruskal.test(needs$Q4_red, needs$Q29_1)

kruskal.test(needs$Q4_red, needs$Q29_2) 

kruskal.test(needs$Q4_red, needs$Q29_3)

kruskal.test(needs$Q4_red, needs$Q29_4) 

kruskal.test(needs$Q4_red, needs$Q29_5)

kruskal.test(needs$Q4_red, needs$Q29_6)

kruskal.test(needs$Q4_red, needs$Q29_7)

####
kruskal.test(needs$Q4_red, needs$Q34_1)

kruskal.test(needs$Q4_red, needs$Q34_2) 

kruskal.test(needs$Q4_red, needs$Q34_3)

table(needs$Q4_red, needs$Q34_4)
kruskal.test(needs$Q4_red, needs$Q34_4) #####Downsizing operation
median(needs$Q34_4[needs$Q4_red=="Yes [1]"])
median(needs$Q34_4[needs$Q4_red=="No [0]"])

kruskal.test(needs$Q4_red, needs$Q34_5)

kruskal.test(needs$Q4_red, needs$Q34_6)

kruskal.test(needs$Q4_red, needs$Q34_7)
####
kruskal.test(needs$Q4_red, needs$Q36_1)

kruskal.test(needs$Q4_red, needs$Q36_2) 

kruskal.test(needs$Q4_red, needs$Q36_3)

kruskal.test(needs$Q4_red, needs$Q36_4) 

kruskal.test(needs$Q4_red, needs$Q36_5)

###
kruskal.test(needs$Q4_red, needs$Q38_1)

kruskal.test(needs$Q4_red, needs$Q38_2) 

kruskal.test(needs$Q4_red, needs$Q38_3)

kruskal.test(needs$Q4_red, needs$Q38_4)


#
kruskal.test(needs$Q4_red, needs$Q43)




table(needs$Q4_red, needs$Q20_size)
fisher.test(needs$Q4_red, needs$Q20_size)
table(needs$Q4_red, needs$Q1_1)
fisher.test(needs$Q4_red, needs$Q1_1)

table(needs$Q4_exp, needs$Q20_size)
fisher.test(needs$Q4_exp, needs$Q20_size)
table(needs$Q4_exp, needs$Q1_1)
fisher.test(needs$Q4_exp, needs$Q1_1)
pairwise.fisher.test(needs$Q4_exp, needs$Q1_1, p.adjust.method = "BH")

table(needs$Q4_rob, needs$Q20_size)
fisher.test(needs$Q4_rob, needs$Q20_size)
table(needs$Q4_rob, needs$Q1_1)
fisher.test(needs$Q4_rob, needs$Q1_1)
pairwise.fisher.test(needs$Q4_rob, needs$Q1_1, p.adjust.method = "BH")

table(needs$Q4_man, needs$Q20_size)
fisher.test(needs$Q4_man, needs$Q20_size)
pairwise.fisher.test(needs$Q4_man, needs$Q20_size, p.adjust.method = "BH")

table(needs$Q4_man, needs$Q1_1)
fisher.test(needs$Q4_man, needs$Q1_1)

table(needs$Q4_maj, needs$Q20_size)
fisher.test(needs$Q4_maj, needs$Q20_size)
table(needs$Q4_maj, needs$Q1_1)
fisher.test(needs$Q4_maj, needs$Q1_1)


table(needs$Q31_bfe, needs$Q20_size)
fisher.test(needs$Q31_bfe, needs$Q20_size)
table(needs$Q31_bfe, needs$Q1_1)
fisher.test(needs$Q31_bfe, needs$Q1_1)

pairwise.fisher.test(needs$Q31_bfe, needs$Q20_size, p.adjust.method = "BH")


table(needs$Q31_wh, needs$Q20_size)
fisher.test(needs$Q31_wh, needs$Q20_size)
pairwise.fisher.test(needs$Q31_wh, needs$Q20_size, p.adjust.method = "BH")


table(needs$Q31_wh, needs$Q1_1)
fisher.test(needs$Q31_wh, needs$Q1_1)

table(needs$Q31_bfr, needs$Q20_size)
fisher.test(needs$Q31_bfr, needs$Q20_size)

table(needs$Q31_bfr, needs$Q1_1)
fisher.test(needs$Q31_bfr, needs$Q1_1)
pairwise.fisher.test(needs$Q31_bfr, needs$Q1_1, p.adjust.method = "BH")



pairwise.fisher.test(needs$Q4_exp, needs$Q1_1, p.adjust.method = "BH")


kruskal.test(needs$Q5_1 ~ needs$Q20_size)
kruskal.test(needs$Q5_1 ~ needs$Q1)
cor.test(as.numeric(needs$Q5_1), needs$Q21_int1, method="spearman")
a= cor.test(as.numeric(needs$Q5_1), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q5_2 ~ needs$Q20_size) #borderline
kruskal.test(needs$Q5_2 ~ needs$Q15)
cor.test(as.numeric(needs$Q5_2), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_2), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q5_3 ~ needs$Q20_size)
kruskal.test(needs$Q5_3 ~ needs$Q15)
cor.test(as.numeric(needs$Q5_3), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_3), needs$Q21_int2, method="spearman") #borderline

kruskal.test(needs$Q5_4 ~ needs$Q20_size)
kruskal.test(needs$Q5_4 ~ needs$Q15)
cor.test(as.numeric(needs$Q5_4), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_4), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q5_5 ~ needs$Q20_size) #p=0.03
kruskal.test(needs$Q5_5 ~ needs$Q1_1) #p=0.02
cor.test(as.numeric(needs$Q5_5), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_5), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q5_6 ~ needs$Q20_size)
kruskal.test(needs$Q5_6 ~ needs$Q15)
cor.test(as.numeric(needs$Q5_6), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_6), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q5_7 ~ needs$Q20_size)
kruskal.test(needs$Q5_7 ~ needs$Q15)
cor.test(as.numeric(needs$Q5_7), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_7), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q5_8 ~ needs$Q20_size) #p=0.03
kruskal.test(needs$Q5_8 ~ needs$Q15)
cor.test(as.numeric(needs$Q5_8), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_8), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q5_9 ~ needs$Q20_size)
kruskal.test(needs$Q5_9 ~ needs$Q15)
cor.test(as.numeric(needs$Q5_9), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_9), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q5_10 ~ needs$Q20_size)
kruskal.test(needs$Q5_10 ~ needs$Q15)
cor.test(as.numeric(needs$Q5_10), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q5_10), needs$Q21_int2, method="spearman")

#Q7
kruskal.test(needs$Q7_1 ~ needs$Q20_size)
kruskal.test(needs$Q7_1 ~ needs$Q15)
cor.test(as.numeric(needs$Q7_1), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q7_1), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q7_2 ~ needs$Q20_size) 
kruskal.test(needs$Q7_2 ~ needs$Q15)
cor.test(as.numeric(needs$Q7_2), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q7_2), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q7_3 ~ needs$Q20_size)
kruskal.test(needs$Q7_3 ~ needs$Q15)
cor.test(as.numeric(needs$Q7_3), needs$Q21_int1, method="spearman") ###p=0.03
cor.test(as.numeric(needs$Q7_3), needs$Q21_int2, method="spearman") 

kruskal.test(needs$Q7_4 ~ needs$Q20_size)
kruskal.test(needs$Q7_4 ~ needs$Q15)
cor.test(as.numeric(needs$Q7_4), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q7_4), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q7_5 ~ needs$Q20_size) 
kruskal.test(needs$Q7_5 ~ needs$Q15) 
cor.test(as.numeric(needs$Q7_5), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q7_5), needs$Q21_int2, method="spearman")

#Q9
kruskal.test(needs$Q9_1 ~ needs$Q20_size)
kruskal.test(needs$Q9_1 ~ needs$Q15)
cor.test(as.numeric(needs$Q9_1), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q9_1), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q9_2 ~ needs$Q20_size)
kruskal.test(needs$Q9_2 ~ needs$Q15)
cor.test(as.numeric(needs$Q9_2), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q9_2), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q9_3 ~ needs$Q20_size)
kruskal.test(needs$Q9_3 ~ needs$Q15)
cor.test(as.numeric(needs$Q9_3), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q9_3), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q9_4 ~ needs$Q20_size)
kruskal.test(needs$Q9_4 ~ needs$Q15)
cor.test(as.numeric(needs$Q9_4), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q9_4), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q9_5 ~ needs$Q20_size)
kruskal.test(needs$Q9_5 ~ needs$Q20_int)
kruskal.test(needs$Q9_5 ~ needs$Q1_1) ### p=0.02
cor.test(as.numeric(needs$Q9_5), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q9_5), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q9_6 ~ needs$Q20_size)
kruskal.test(needs$Q9_6 ~ needs$Q15)
cor.test(as.numeric(needs$Q9_6), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q9_6), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q11_1 ~ needs$Q20_size)
kruskal.test(needs$Q11_1  ~ needs$Q15)
cor.test(as.numeric(needs$Q11_1), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q11_1), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q11_2 ~ needs$Q20_size)
kruskal.test(needs$Q11_2  ~ needs$Q15)
cor.test(as.numeric(needs$Q11_2), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q11_2), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q11_3 ~ needs$Q20_size)
kruskal.test(needs$Q11_3  ~ needs$Q15)
cor.test(as.numeric(needs$Q11_3), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q11_3), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q11_4 ~ needs$Q20_size)
kruskal.test(needs$Q11_4  ~ needs$Q15) #p=0.08
cor.test(as.numeric(needs$Q11_4), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q11_4), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q11_5~ needs$Q20_size)
kruskal.test(needs$Q11_5  ~ needs$Q15)
cor.test(as.numeric(needs$Q11_5), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q11_5), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q11_6~ needs$Q20_size) #p=0.08
kruskal.test(needs$Q11_6  ~ needs$Q15)
cor.test(as.numeric(needs$Q11_6), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q11_6), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q13_1~ needs$Q20_size) #p=0.07
kruskal.test(needs$Q13_1  ~ needs$Q15)
cor.test(as.numeric(needs$Q13_1), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q13_1), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q13_2~ needs$Q20_size)
kruskal.test(needs$Q13_2  ~ needs$Q15)
cor.test(as.numeric(needs$Q13_2), needs$Q21_int1, method="spearman") #p=0.06
cor.test(as.numeric(needs$Q13_2), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q13_3~ needs$Q20_size) #p=0.03
kruskal.test(needs$Q13_3  ~ needs$Q15)
cor.test(as.numeric(needs$Q13_3), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q13_3), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q13_4~ needs$Q20_size)
kruskal.test(needs$Q13_4  ~ needs$Q15)
cor.test(as.numeric(needs$Q13_4), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q13_4), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q13_5~ needs$Q20_size)
kruskal.test(needs$Q13_5  ~ needs$Q15)
cor.test(as.numeric(needs$Q13_5), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q13_5), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q13_6~ needs$Q20_size)
kruskal.test(needs$Q13_6  ~ needs$Q15)
cor.test(as.numeric(needs$Q13_6), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q13_6), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q27_1~ needs$Q20_size)
kruskal.test(needs$Q27_1  ~ needs$Q15) 


kruskal.test(needs$Q27_2~ needs$Q20_size) 
kruskal.test(needs$Q27_2  ~ needs$Q15)

kruskal.test(needs$Q27_3~ needs$Q20_size) 
kruskal.test(needs$Q27_3  ~ needs$Q15)

kruskal.test(needs$Q27_4~ needs$Q20_size) #p=0.07
kruskal.test(needs$Q27_4  ~ needs$Q15)

kruskal.test(needs$Q27_5~ needs$Q20_size)
kruskal.test(needs$Q27_5  ~ needs$Q15)

kruskal.test(needs$Q27_6~ needs$Q20_size)
kruskal.test(needs$Q27_6  ~ needs$Q15)

kruskal.test(needs$Q29_1~ needs$Q20_size) 
kruskal.test(needs$Q29_1  ~ needs$Q15)

kruskal.test(needs$Q29_2~ needs$Q20_size) 
kruskal.test(needs$Q29_2  ~ needs$Q15)

kruskal.test(needs$Q29_3~ needs$Q20_size) #p=0.02
kruskal.test(needs$Q29_3  ~ needs$Q15)

kruskal.test(needs$Q29_4~ needs$Q20_size) 
kruskal.test(needs$Q29_4  ~ needs$Q15)

kruskal.test(needs$Q29_5~ needs$Q20_size)
kruskal.test(needs$Q29_5  ~ needs$Q15)

kruskal.test(needs$Q29_6~ needs$Q20_size)
kruskal.test(needs$Q29_6  ~ needs$Q15)

kruskal.test(needs$Q34_1 ~ needs$Q20_size) ###p=0.003
kruskal.test(needs$Q34_1  ~ needs$Q15)
cor.test(as.numeric(needs$Q34_1), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q34_1), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q34_2~ needs$Q20_size) ###p<0.0001
kruskal.test(needs$Q34_2  ~ needs$Q15)
cor.test(as.numeric(needs$Q34_2), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q34_2), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q34_3~ needs$Q20_size) ###p=0.02
kruskal.test(needs$Q34_3  ~ needs$Q15)
cor.test(as.numeric(needs$Q34_3), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q34_3), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q34_4~ needs$Q20_size)
kruskal.test(needs$Q34_4  ~ needs$Q15)
cor.test(as.numeric(needs$Q34_4), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q34_4), needs$Q21_int2, method="spearman") ###p=0.02

kruskal.test(needs$Q34_5~ needs$Q20_size) ###p=0.004
kruskal.test(needs$Q34_5  ~ needs$Q15)
cor.test(as.numeric(needs$Q34_5), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q34_5), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q34_6~ needs$Q20_size) ###p=0.02
kruskal.test(needs$Q34_6  ~ needs$Q15) #p=0.04
cor.test(as.numeric(needs$Q34_6), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q34_6), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q34_7~ needs$Q20_size) ###p=0.03
kruskal.test(needs$Q34_7  ~ needs$Q15)
cor.test(as.numeric(needs$Q34_7), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q34_7), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q36_1~ needs$Q20_size) #p=0.08
kruskal.test(needs$Q36_1  ~ needs$Q15)
cor.test(as.numeric(needs$Q36_1), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q36_1), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q36_2~ needs$Q20_size)
kruskal.test(needs$Q36_2  ~ needs$Q15)
cor.test(as.numeric(needs$Q36_2), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q36_2), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q36_3~ needs$Q20_size) ###p=0.05
kruskal.test(needs$Q36_3  ~ needs$Q15) ###p=0.006
cor.test(as.numeric(needs$Q36_3), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q36_3), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q36_4~ needs$Q20_size) #p=0.06
kruskal.test(needs$Q36_4  ~ needs$Q15)
cor.test(as.numeric(needs$Q36_4), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q36_4), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q36_5~ needs$Q20_size) ###p=0.02
kruskal.test(needs$Q36_5  ~ needs$Q15)
cor.test(as.numeric(needs$Q36_5), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q36_5), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q38_1~ needs$Q20_size) ###p=0.008
kruskal.test(needs$Q38_1  ~ needs$Q15)
cor.test(as.numeric(needs$Q38_1), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q38_1), needs$Q21_int2, method="spearman") 

kruskal.test(needs$Q38_2~ needs$Q20_size)
kruskal.test(needs$Q38_2  ~ needs$Q15)
cor.test(as.numeric(needs$Q38_2), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q38_2), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q38_3~ needs$Q20_size) ###p<0.0004  
kruskal.test(needs$Q38_3  ~ needs$Q15) ###p=0.007
cor.test(as.numeric(needs$Q38_3), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q38_3), needs$Q21_int2, method="spearman") 

kruskal.test(needs$Q38_4~ needs$Q20_size) ###p=0.002
kruskal.test(needs$Q38_4  ~ needs$Q15)
cor.test(as.numeric(needs$Q38_4), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q38_4), needs$Q21_int2, method="spearman")

kruskal.test(needs$Q26_int ~ needs$Q20_size) #p=0.06
dunnTest(as.numeric(needs$Q26_int) ~ needs$Q20_size,
         method="bh")

kruskal.test(needs$Q26_int  ~ needs$Q15)
kruskal.test(needs$Q26_int  ~ needs$Q4_exp)
kruskal.test(needs$Q26_int  ~ needs$Q4_maj)
kruskal.test(needs$Q26_int  ~ needs$Q4_rob)
kruskal.test(needs$Q26_int  ~ needs$Q4_man)
kruskal.test(needs$Q26_int  ~ needs$Q4_red)

kruskal.test(needs$Q26_int  ~ needs$Q3)

cor.test(needs$Q26_int, as.numeric(needs$Q5_1), method="spearman")
cor.test(needs$Q26_int, as.numeric(needs$Q5_2), method="spearman")
cor.test(needs$Q26_int, as.numeric(needs$Q5_3), method="spearman")
cor.test(needs$Q26_int, as.numeric(needs$Q5_4), method="spearman")
cor.test(needs$Q26_int, as.numeric(needs$Q5_5), method="spearman")



cor.test(as.numeric(needs$Q26_int), needs$Q21_int1, method="spearman")
cor.test(as.numeric(needs$Q26_int), needs$Q21_int2, method="spearman")





kruskal.test(needs$Q43 ~ needs$Q20_size) 
kruskal.test(needs$Q43  ~ needs$Q15)


#############Q43####
kruskal.test(needs$Q5_1~needs$Q43)
kruskal.test(needs$Q5_2~needs$Q43)
kruskal.test(needs$Q5_3~needs$Q43)
kruskal.test(needs$Q5_4~needs$Q43)
kruskal.test(needs$Q5_5~needs$Q43)
kruskal.test(needs$Q5_6~needs$Q43)
kruskal.test(needs$Q5_7~needs$Q43)
kruskal.test(needs$Q5_8~needs$Q43)
kruskal.test(needs$Q5_9~needs$Q43)
kruskal.test(needs$Q5_10~needs$Q43)

kruskal.test(needs$Q7_1~needs$Q43)
kruskal.test(needs$Q7_2~needs$Q43)
kruskal.test(needs$Q7_3~needs$Q43)
kruskal.test(needs$Q7_4~needs$Q43)
kruskal.test(needs$Q7_5~needs$Q43)

kruskal.test(needs$Q9_1~needs$Q43)
kruskal.test(needs$Q9_2~needs$Q43)
kruskal.test(needs$Q9_3~needs$Q43)
kruskal.test(needs$Q9_4~needs$Q43)
kruskal.test(needs$Q9_5~needs$Q43)
kruskal.test(needs$Q9_6~needs$Q43)

kruskal.test(needs$Q11_1~needs$Q43)
kruskal.test(needs$Q11_2~needs$Q43)
kruskal.test(needs$Q11_3~needs$Q43)
kruskal.test(needs$Q11_4~needs$Q43)
kruskal.test(needs$Q11_5~needs$Q43)
kruskal.test(needs$Q11_6~needs$Q43)#p=0.05
dunnTest(as.numeric(needs$Q11_6) ~ needs$Q43,
         method="bh") #p=0.07


kruskal.test(needs$Q13_1~needs$Q43)
kruskal.test(needs$Q13_2~needs$Q43)
kruskal.test(needs$Q13_3~needs$Q43)
kruskal.test(needs$Q13_4~needs$Q43)
kruskal.test(needs$Q13_5~needs$Q43)
kruskal.test(needs$Q13_6~needs$Q43)

kruskal.test(needs$Q27_1~needs$Q43)
kruskal.test(needs$Q27_2~needs$Q43)
kruskal.test(needs$Q27_3~needs$Q43)
kruskal.test(needs$Q27_4~needs$Q43)
kruskal.test(needs$Q27_5~needs$Q43)
kruskal.test(needs$Q27_6~needs$Q43)

kruskal.test(needs$Q29_1~needs$Q43)
kruskal.test(needs$Q29_2~needs$Q43)
kruskal.test(needs$Q29_3~needs$Q43)
kruskal.test(needs$Q29_4~needs$Q43)
kruskal.test(needs$Q29_5~needs$Q43)
kruskal.test(needs$Q29_6~needs$Q43)

kruskal.test(needs$Q34_1~needs$Q43)
kruskal.test(needs$Q34_2~needs$Q43)
kruskal.test(needs$Q34_3~needs$Q43)
kruskal.test(needs$Q34_4~needs$Q43)
kruskal.test(needs$Q34_5~needs$Q43)
kruskal.test(needs$Q34_6~needs$Q43)
kruskal.test(needs$Q34_7~needs$Q43)

kruskal.test(needs$Q36_1~needs$Q43)
kruskal.test(needs$Q36_2~needs$Q43)
kruskal.test(needs$Q36_3~needs$Q43)
kruskal.test(needs$Q36_4~needs$Q43)
kruskal.test(needs$Q36_5~needs$Q43)

kruskal.test(needs$Q36_1~needs$Q43)
kruskal.test(needs$Q36_2~needs$Q43)
kruskal.test(needs$Q36_3~needs$Q43)
kruskal.test(needs$Q36_4~needs$Q43)
kruskal.test(needs$Q36_5~needs$Q43)

kruskal.test(needs$Q38_1~needs$Q43)
kruskal.test(needs$Q38_2~needs$Q43)
kruskal.test(needs$Q38_3~needs$Q43) #p=0.05
dunnTest(as.numeric(needs$Q38_3) ~ needs$Q43,
         method="bh")

kruskal.test(needs$Q38_4~needs$Q43)

fisher.test(table(needs$Q15,needs$Q43))
fisher.test(table(needs$Q20_size,needs$Q43))



###Dunn test of significant results (p=<0.05)
library(FSA)
library(tidyverse)

kruskal.test(needs$Q11_3~needs$Q43)#p=0.02
dunnTest(as.numeric(needs$Q11_6) ~ as.factor(needs$Q43),
         method="bh")

kruskal.test(needs$Q11_6~needs$Q43)#p=0.02
dunnTest(as.numeric(needs$Q11_6) ~ as.factor(needs$Q43),
         method="bh")

kruskal.test(needs$Q13_6~needs$Q43)#p=0.04
dunnTest(as.numeric(needs$Q13_6) ~ as.factor(needs$Q43),
         method="bh")

kruskal.test(needs$Q36_3~needs$Q43)#p=0.05
dunnTest(as.numeric(needs$Q36_3) ~ as.factor(needs$Q43),
         method="bh")

kruskal.test(needs$Q36_3~needs$Q43)#p=0.05
dunnTest(as.numeric(needs$Q36_6) ~ as.factor(needs$Q43),
         method="bh")


##Median calculator (score)
median(as.numeric(needs$Q5_1), na.rm=T)
median(as.numeric(needs$Q5_2), na.rm=T)
median(as.numeric(needs$Q5_3), na.rm=T)
median(as.numeric(needs$Q5_4), na.rm=T)
median(as.numeric(needs$Q5_5), na.rm=T)
median(as.numeric(needs$Q5_6), na.rm=T)
median(as.numeric(needs$Q5_7), na.rm=T)
median(as.numeric(needs$Q5_8), na.rm=T)
median(as.numeric(needs$Q5_9), na.rm=T)
median(as.numeric(needs$Q5_10), na.rm=T)

median(as.numeric(needs$Q7_1), na.rm=T)
median(as.numeric(needs$Q7_2), na.rm=T)
median(as.numeric(needs$Q7_3), na.rm=T)
median(as.numeric(needs$Q7_4), na.rm=T)
median(as.numeric(needs$Q7_5), na.rm=T)


median(as.numeric(needs$Q9_1), na.rm=T)
median(as.numeric(needs$Q9_2), na.rm=T)
median(as.numeric(needs$Q9_3), na.rm=T)
median(as.numeric(needs$Q9_4), na.rm=T)
median(as.numeric(needs$Q9_5), na.rm=T)
median(as.numeric(needs$Q9_6), na.rm=T)

median(as.numeric(needs$Q11_1), na.rm=T)
median(as.numeric(needs$Q11_2), na.rm=T)
median(as.numeric(needs$Q11_3), na.rm=T)
median(as.numeric(needs$Q11_4), na.rm=T)
median(as.numeric(needs$Q11_5), na.rm=T)
median(as.numeric(needs$Q11_6), na.rm=T)



median(as.numeric(needs$Q13_1), na.rm=T)
median(as.numeric(needs$Q13_2), na.rm=T)
median(as.numeric(needs$Q13_3), na.rm=T)
median(as.numeric(needs$Q13_4), na.rm=T)
median(as.numeric(needs$Q13_5), na.rm=T)
median(as.numeric(needs$Q13_6), na.rm=T)


median(as.numeric(needs$Q27_1), na.rm=T)
median(as.numeric(needs$Q27_2), na.rm=T)
median(as.numeric(needs$Q27_3), na.rm=T)
median(as.numeric(needs$Q27_4), na.rm=T)
median(as.numeric(needs$Q27_5), na.rm=T)
median(as.numeric(needs$Q27_6), na.rm=T)

median(as.numeric(needs$Q29_1), na.rm=T)
median(as.numeric(needs$Q29_2), na.rm=T)
median(as.numeric(needs$Q29_3), na.rm=T)
median(as.numeric(needs$Q29_4), na.rm=T)
median(as.numeric(needs$Q29_5), na.rm=T)
median(as.numeric(needs$Q29_6), na.rm=T)
median(as.numeric(needs$Q29_7), na.rm=T)

median(as.numeric(needs$Q34_1), na.rm=T)
median(as.numeric(needs$Q34_2), na.rm=T)
median(as.numeric(needs$Q34_3), na.rm=T)
median(as.numeric(needs$Q34_4), na.rm=T)
median(as.numeric(needs$Q34_5), na.rm=T)
median(as.numeric(needs$Q34_6), na.rm=T)
median(as.numeric(needs$Q34_7), na.rm=T)


median(as.numeric(needs$Q36_1), na.rm=T)
median(as.numeric(needs$Q36_2), na.rm=T)
median(as.numeric(needs$Q36_3), na.rm=T)
median(as.numeric(needs$Q36_4), na.rm=T)
median(as.numeric(needs$Q36_5), na.rm=T)

median(as.numeric(needs$Q38_1), na.rm=T)
median(as.numeric(needs$Q38_2), na.rm=T)
median(as.numeric(needs$Q38_3), na.rm=T)
median(as.numeric(needs$Q38_4), na.rm=T)



###Heatmaps
#Q5
a= matrix(c(table(needs$Q5_1),table(needs$Q5_2), table(needs$Q5_3),
            table(needs$Q5_4),table(needs$Q5_5), table(needs$Q5_6),
            table(needs$Q5_7),table(needs$Q5_8),table(needs$Q5_9),
            table(needs$Q5_10)), ncol=5, nrow=10, byrow=T)
a

rownames(a)<- c("Organizational awareness of the virus",
                "Labor availability",
                "Workers' compliance with control measures", "Workers' abuse of control measures",
                "Limited financial resources", "Production capacity", "Product quality",
                "Supplier management", "Customer expectations", "Complex/ever-changing government\nregulations about COVID-19")
colnames(a)<- c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                "Very concerning [4]", "Extremely concerning [5]")
a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Product quality",
                                  "Workers' abuse of control measures",
                                  "Limited financial resources",
                                  "Workers' compliance with control measures",
                                  "Organizational awareness of the virus",
                                  "Production capacity",
                                  "Supplier management",
                                  "Customer expectations",
                                  "Labor availability",
                                  "Complex/ever-changing government\nregulations about COVID-19"))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                               y = Var1,
                                               fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.y=element_text(hjust = 1),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="Regarding control of COVID-19\nin your industry sector, how\nconcerning are the items below?")

mine.heatmap

#Q7

a= matrix(c(table(needs$Q7_1),table(needs$Q7_2), table(needs$Q7_3),
            table(needs$Q7_4),table(needs$Q7_5)), nrow=5, byrow=T)

rownames(a)<- c("Access to number of workers needed", "Access to workers with necessary skills",
                "Sufficient housing for labor", "Turnover in workforce",
                "Need to train labor")
colnames(a)<- c("Not at all challenging [1]", "Slightly challenging [2]", "Moderately challenging [3]",
                "Very challenging [4]", "Extremely challenging [5]")
a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Turnover in workforce",
                                  "Sufficient housing for labor",
                                  "Access to number of workers needed", 
                                  "Access to workers with necessary skills",
                                  "Need to train labor"))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="Regarding the labor force needed to 
maintain the production capacity in your
industry sector during the COVID-19 
pandemic, how challenging are the items 
below?")

mine.heatmap

#Q9

a= matrix(c(table(needs$Q9_1),table(needs$Q9_2), table(needs$Q9_3),
            table(needs$Q9_4),table(needs$Q9_5), table(needs$Q9_6)), 
          byrow=T, nrow=6)

rownames(a)<- c("More and better training", 
                "Training materials in more languages",
                "Better technologies to assure social distancing", 
                "Better and cheaper testing technologies ",
                "Easier way to understand regulations", 
                "Better information on cost effectiveness\nof COVID-19 mitigation strategies")
colnames(a)<- c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                "Very important [4]", "Extremely important [5]")

a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Training materials in more languages",
                                  "More and better training",
                                  "Better technologies to assure social distancing",
                                  "Better and cheaper testing technologies ",
                                  "Better information on cost effectiveness\nof COVID-19 mitigation strategies",
                                  "Easier way to understand regulations"
                                  ))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="Regarding needs to successfully 
mitigate COVID-19 in your industry
sector, how important are the items
below?")

mine.heatmap


#Q11

a= matrix(c(table(needs$Q11_1),table(needs$Q11_2), table(needs$Q11_3),
            table(needs$Q11_4),table(needs$Q11_5), table(needs$Q11_6)), 
          byrow=T, nrow=6)

rownames(a)<- c(
  "Ability of the model to predict impact on\nproduction capacity",
  "Ability of the model to predict initial and\nongoing cost of implementation ", 
  "Ability of the model to predict\ninfection risk reduction",
  "Ease of model use by company personnel", 
  "Ability to use the model confidentially",
  "Ability to customize the model for use\nin a specific facility")
colnames(a)<- c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                "Very important [4]", "Extremely important [5]")
a=melt(a)

a$Var1 <- factor(a$Var1, levels=c(
  "Ability of the model to predict impact on\nproduction capacity",
  "Ability of the model to predict initial and\nongoing cost of implementation ", 
  "Ability of the model to predict\ninfection risk reduction",
  "Ease of model use by company personnel", 
  "Ability to use the model confidentially",
  "Ability to customize the model for use\nin a specific facility"))
mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=20),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="If computational modeling tools were 
available to predict which COVID-19 
mitigation strategies would most likely
be successful in a given facility/operation
at a given time, how important would the
model features below be for your industry
sector?")

mine.heatmap


#Q13
a= matrix(c(table(needs$Q13_1),table(needs$Q13_2), table(needs$Q13_3),
            table(needs$Q13_4),table(needs$Q13_5), table(needs$Q13_6)), 
          byrow=T, nrow=6)

rownames(a)<- c("Workforce trained about COVID-19\nrisks and mitigation",
                "Standard operating procedures/checklists are\nin place for mitigation of COVID-19 impacts",
                "Established effective risk communication plan", 
                "Digital technologies utilized in planning of facility\nspecific COVID-19 mitigation",
                "Investment made into technologies that\nreduce vulnerability to a future pandemic\nor similar system wide disruption", 
                "Workforce related contingency plans updated to\nminimize COVID-19 related business interruptions")
colnames(a)<- c("Not at all important [1]", "Slightly important [2]", "Moderately important [3]",
                "Very important [4]", "Extremely important [5]")

a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Digital technologies utilized in planning of facility\nspecific COVID-19 mitigation",
                                  "Workforce trained about COVID-19\nrisks and mitigation",
                                    "Standard operating procedures/checklists are\nin place for mitigation of COVID-19 impacts",
                                    "Established effective risk communication plan", 
                                    "Investment made into technologies that\nreduce vulnerability to a future pandemic\nor similar system wide disruption", 
                                    "Workforce related contingency plans updated to\nminimize COVID-19 related business interruptions"
                                    ))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="Regarding indicators of successful 
responses to COVID-19 in your 
industry sector, how important 
are the items below?")

mine.heatmap



#Q27
a= matrix(c(table(needs$Q27_1),table(needs$Q27_2), table(needs$Q27_3),
            table(needs$Q27_4),table(needs$Q27_5), table(needs$Q27_6)), 
          byrow=T, nrow=6)

rownames(a)<- c("Specialized production line functions", "Lab personnel",
                "Quality control and assurance", "Sanitation and cleaning",
                "Supervisors", "Engineering and/or maintenance crew")
colnames(a)<- c("No risk [1]", "Low risk [2]", "Moderate risk [3]",
                "High risk [4]", "Very high risk [5]")
a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Supervisors", 
                                  "Quality control and assurance",
                                  "Lab personnel",
   "Specialized production line functions", "Sanitation and cleaning",
                                   "Engineering and/or maintenance crew"))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="How would you describe the risk 
of a shutdown in this facility/operation
due to work absences in each of 
the specialized job functions below?")

mine.heatmap


#Q29
a= matrix(c(table(needs$Q29_1),table(needs$Q29_2), table(needs$Q29_3),
            table(needs$Q29_4),table(needs$Q29_5), table(needs$Q29_6), table(needs$Q29_7)), 
          byrow=T, nrow=7)

rownames(a)<- c("Employee housing conditions", 
                "Employee transportation conditions",
                "Indoor common areas", 
                "Outdoor common areas",
                "Common production tools/equipment", 
                "Production line", 
                "Activities in the local community")
colnames(a)<- c("Not at all concerning [1]", "Slightly concerning [2]", "Moderately concerning [3]",
                "Very concerning [4]", "Extremely concerning [5]")
a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Outdoor common areas",
                                  "Employee housing conditions", 
                                  "Employee transportation conditions",
                                  "Indoor common areas", 
                                  "Common production tools/equipment", 
                                  "Production line", 
                                  "Activities in the local community"))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="Regarding potential sources of
COVID-19 infection in this 
facility/operation, how concerning
are the items below?")

mine.heatmap

#Q34
a= matrix(c(table(needs$Q34_1),table(needs$Q34_2), table(needs$Q34_3),
            table(needs$Q34_4),table(needs$Q34_5), table(needs$Q34_6),
            table(needs$Q34_7)), 
          byrow=T, nrow=7)

rownames(a)<- c("Installed physical barriers",
                "Staggered break times",
                "Staggered arrival/departure times (staggered shifts)",
                "Downsizing operation",
                "Adjusted sick day policy",
                "Spacing workers >6ft during production",
                "Cohorting employees")
colnames(a)<- c("No\n[0]","Yes, but only\npartially/temporarily\n[0.5]", "Yes\n[1]")
a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Downsizing operation",
                                  "Cohorting employees",
                                  "Staggered arrival/departure times (staggered shifts)",
                                  "Installed physical barriers",
                                    "Staggered break times",
                                    "Adjusted sick day policy",
                                    "Spacing workers >6ft during production"))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="Have any of these social 
distancing strategies been
applied in this facility/operation,
at any point since the start of
the COVID-19 pandemic?")
mine.heatmap

#Q36
a= matrix(c(table(needs$Q36_1),table(needs$Q36_2), table(needs$Q36_3),
            table(needs$Q36_4),table(needs$Q34_5)), 
          byrow=T, nrow=5)

rownames(a)<- c("Enhanced handwashing", 
                "Alcohol-based hand rubs",
                "Face mask, face shields, goggles", 
                "Increased ventilation rates",
                "Air cleaning/filtering")
colnames(a)<- c("No\n[0]","Yes, but only\npartially/temporarily\n[0.5]", "Yes\n[1]")
a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Increased ventilation rates",
                                  "Air cleaning/filtering",
                                  "Enhanced handwashing", 
                                  "Alcohol-based hand rubs",
                                  "Face mask, face shields, goggles"
                                                ))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="Have any of these employee biosafety 
strategies been applied in this 
facility/operation, at any point since 
the start of the COVID-19 pandemic?")

mine.heatmap 

#Q38
a= matrix(c(table(needs$Q38_1),table(needs$Q38_2), table(needs$Q38_3),
            table(needs$Q38_4)), 
          byrow=T, nrow=4)

rownames(a)<- c(
  "Temperature screening and quarantine",
  "Test for infection and isolation",
  "Contact tracing and quarantine",
  "Return to work post recovery policy")
colnames(a)<- c("No\n[0]","Yes, but only\npartially/temporarily\n[0.5]", "Yes\n[1]")
a=melt(a)

a$Var1 <- factor(a$Var1, levels=c("Temperature screening and quarantine",
  "Test for infection and isolation",
  "Contact tracing and quarantine",
  "Return to work post recovery policy"))

mine.heatmap <- ggplot(data= a, mapping = aes(x=Var2,
                                              y = Var1,
                                              fill=value)) +
  geom_tile() +
  geom_text(aes(label=value), size=7)+
  scale_fill_gradient(low = "white", high = "#4169E1")+
  xlab(label = "") +
  ylab(label = "") +
  theme_minimal()+
  theme(legend.text=element_text(size=18),
        axis.text=element_text(size=23),
        axis.text.x=element_text(angle=90, vjust = 0.5, hjust=1),
        plot.title = element_text(size=21, face="bold.italic"),
        text=element_text(family="Serif",),
        legend.title=element_text(size=18)) +
  labs(fill = "Frequency")+
  ggtitle(label="Have any of these surveillance
strategies been applied in this 
facility/operation, at any point since 
the start of the COVID-19 pandemic?")

mine.heatmap 


##########
####
#######
####
###########
#Q43 as predictor
library(FSA)
sect <- apply(needs[ , c(9:41,54:66, 71:82, 84:88)], 2, krukal.test, as.factor(needs$Q43))
require(plyr)
out1 <- ldply(sect, function(x) c(x$data.name, x$p.value, x$statistic, x$parameter, x$method))
colnames(out1)<- c("Response", "Explanatory", "p.value", "Statistic", "method")
out1$Explanatory <- rep("Reason to select facility", 62)
out1$p.value <- round(as.numeric(out1$p.value), 3)
out1$Statistic <- round(as.numeric(out1$Statistic), 3)
write.csv(out1, "axe.csv")

colnames(needs[ , c(9:41,54:66, 71:82, 84:87)])

dunnTest(as.numeric(needs$Q5_4) ~ as.factor(needs$Q4_exp),
         method="bh")

wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q4_exp))

dunnTest(as.numeric(needs$Q5_4) ~ needs$Q31_bfe,
         method="bh")

kruskal.test(needs$Q7_3, needs$Q22)

needs[ , c(9:41,54:66, 71:82, 84:87)] <- apply(needs[ , c(9:41,54:66, 71:82, 84:87)], 2, as.numeric)

#numerical (spearman)
sect <- apply(needs[, c(9:41, 54:66, 71:82, 84:87, 91)], 2, cor.test, method=c("spearman"), y=needs$Q25_1)
require(plyr)
out0 <- ldply(sect, function(x) c(x$data.name, x$p.value))
out0$Explanatory <- rep("Reason to select facility", 63)
write.csv(out0, "axe.csv")

needs[, c(9:41, 54:66, 71:82, 84:87, 91)]<- apply(needs[, c(9:41, 54:66, 71:82, 84:87, 91)], 2, as.numeric)
str(needs[, c(9:41,48:52, 54:60, 65:76, 78:81)])


table(needs$Q4_exp, needs$Q5_1)
kruskal.test(needs$Q4_exp, needs$Q5_1)

table(needs$Q4_exp, needs$Q5_2)
kruskal.test(needs$Q4_exp, needs$Q5_2)

table(needs$Q4_exp, needs$Q5_3)
kruskal.test(needs$Q4_exp, needs$Q5_3)

kruskal.test(needs$Q4_exp, needs$Q5_4)

kruskal.test(needs$Q4_exp, needs$Q5_5)

kruskal.test(needs$Q4_exp, needs$Q5_6)

kruskal.test(needs$Q4_exp, needs$Q5_7)

kruskal.test(needs$Q4_exp, needs$Q5_8)

kruskal.test(needs$Q4_exp, needs$Q5_9)

kruskal.test(needs$Q4_exp, needs$Q5_10)

#Q7
table(needs$Q4_exp, needs$Q7_1)
kruskal.test(needs$Q4_exp, needs$Q7_1)

table(needs$Q4_exp, needs$Q7_2)
kruskal.test(needs$Q4_exp, needs$Q7_2)

table(needs$Q4_exp, needs$Q7_3)
kruskal.test(needs$Q4_exp, needs$Q7_3)

kruskal.test(needs$Q4_exp, needs$Q7_4)

kruskal.test(needs$Q4_exp, needs$Q7_5)

#####Operations/production has been reduced/cut back
kruskal.test(needs$Q4_exp, needs$Q9_1)

kruskal.test(needs$Q4_exp, needs$Q9_2) ##### Training materials in more languages
median(needs$Q9_2[needs$Q4_exp=="Yes [1]"])
median(needs$Q9_2[needs$Q4_exp=="No [0]"])

kruskal.test(needs$Q4_exp, needs$Q9_3)

kruskal.test(needs$Q4_exp, needs$Q9_4) ##### Better and cheaper testing technologies
median(needs$Q9_4[needs$Q4_exp=="Yes [1]"])
median(needs$Q9_4[needs$Q4_exp=="No [0]"])

kruskal.test(needs$Q4_exp, needs$Q9_5)

kruskal.test(needs$Q4_exp, needs$Q9_6)

####
kruskal.test(needs$Q4_exp, needs$Q11_1)

kruskal.test(needs$Q4_exp, needs$Q11_2) 

kruskal.test(needs$Q4_exp, needs$Q11_3)

kruskal.test(needs$Q4_exp, needs$Q11_4) 

kruskal.test(needs$Q4_exp, needs$Q11_5)

kruskal.test(needs$Q4_exp, needs$Q11_6)
####
kruskal.test(needs$Q4_exp, needs$Q13_1)

kruskal.test(needs$Q4_exp, needs$Q13_2) 

kruskal.test(needs$Q4_exp, needs$Q13_3)

kruskal.test(needs$Q4_exp, needs$Q13_4) 

kruskal.test(needs$Q4_exp, needs$Q13_5)

kruskal.test(needs$Q4_exp, needs$Q13_6)

####
kruskal.test(needs$Q4_exp, needs$Q26_int)

####
kruskal.test(needs$Q4_exp, needs$Q27_1)

kruskal.test(needs$Q4_exp, needs$Q27_2) 

kruskal.test(needs$Q4_exp, needs$Q27_3)

kruskal.test(needs$Q4_exp, needs$Q27_4) 

kruskal.test(needs$Q4_exp, needs$Q27_5)

kruskal.test(needs$Q4_exp, needs$Q27_6)

#####
kruskal.test(needs$Q4_exp, needs$Q29_1)

kruskal.test(needs$Q4_exp, needs$Q29_2) 

kruskal.test(needs$Q4_exp, needs$Q29_3)

kruskal.test(needs$Q4_exp, needs$Q29_4) 

kruskal.test(needs$Q4_exp, needs$Q29_5)

kruskal.test(needs$Q4_exp, needs$Q29_6)

kruskal.test(needs$Q4_exp, needs$Q29_7)

####
kruskal.test(needs$Q4_exp, needs$Q34_1)

kruskal.test(needs$Q4_exp, needs$Q34_2) 

kruskal.test(needs$Q4_exp, needs$Q34_3)

table(needs$Q4_exp, needs$Q34_4)
kruskal.test(needs$Q4_exp, needs$Q34_4) #####Downsizing operation
median(needs$Q34_4[needs$Q4_exp=="Yes [1]"])
median(needs$Q34_4[needs$Q4_exp=="No [0]"])

kruskal.test(needs$Q4_exp, needs$Q34_5)

kruskal.test(needs$Q4_exp, needs$Q34_6)

kruskal.test(needs$Q4_exp, needs$Q34_7)
####
kruskal.test(needs$Q4_exp, needs$Q36_1)

kruskal.test(needs$Q4_exp, needs$Q36_2) 

kruskal.test(needs$Q4_exp, needs$Q36_3)

kruskal.test(needs$Q4_exp, needs$Q36_4) 

kruskal.test(needs$Q4_exp, needs$Q36_5)

###
kruskal.test(needs$Q4_exp, needs$Q38_1)

kruskal.test(needs$Q4_exp, needs$Q38_2) 

kruskal.test(needs$Q4_exp, needs$Q38_3)

kruskal.test(needs$Q4_exp, needs$Q38_4)

#
kruskal.test(needs$Q4_exp, needs$Q43)


wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q4_exp)) #############
summary(as.numeric(needs$Q5_5[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q5_5[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q4_exp)) #############
summary(as.numeric(needs$Q5_9[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q5_9[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q4_exp)) ############
summary(as.numeric(needs$Q5_10[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q5_10[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q4_red)) ############
summary(as.numeric(needs$Q5_5[needs$Q4_red=="0"]))
summary(as.numeric(needs$Q5_5[needs$Q4_red=="1"]))

wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q4_red)) 

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q4_rob)) ############
summary(as.numeric(needs$Q5_5[needs$Q4_rob=="0"]))
summary(as.numeric(needs$Q5_5[needs$Q4_rob=="1"]))

wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q4_man)) 
wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q4_man)) 
wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q4_man))

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q4_maj)) ######
summary(as.numeric(needs$Q5_9[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q5_9[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q4_maj)) ####
summary(as.numeric(needs$Q5_10[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q5_10[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q31_bfe)) 
wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q31_bfe)) 
wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q31_bfe))

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q31_wh)) ##########
summary(as.numeric(needs$Q5_5[needs$Q31_wh=="0"]))
summary(as.numeric(needs$Q5_5[needs$Q31_wh=="1"]))

wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q31_wh)) 
wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q31_bfr)) 
wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q31_bfr)) #########
summary(as.numeric(needs$Q5_9[needs$Q31_bfr=="0"]))
summary(as.numeric(needs$Q5_9[needs$Q31_bfr=="1"]))

wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q31_bfr))

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q22)) #########
summary(as.numeric(needs$Q5_5[needs$Q22=="0"]))
summary(as.numeric(needs$Q5_5[needs$Q22=="1"]))

wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q22))

wilcox.test(as.numeric(needs$Q5_1) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q5_2) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q5_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q5_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q5_5) ~ as.factor(needs$Q24)) 
wilcox.test(as.numeric(needs$Q5_6) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q5_7) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q5_8) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q5_9) ~ as.factor(needs$Q24)) 
wilcox.test(as.numeric(needs$Q5_10) ~ as.factor(needs$Q24))

###
###
###
###

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q4_exp)) 

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q4_rob)) ############
summary(as.numeric(needs$Q7_3[needs$Q4_rob=="0"]))
summary(as.numeric(needs$Q7_3[needs$Q4_rob=="1"]))

wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q4_man)) 

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q4_maj)) ############
summary(as.numeric(needs$Q7_2[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q7_2[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q4_maj)) 

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q31_bfe)) 

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q31_bfr)) 

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q22)) #########
summary(as.numeric(needs$Q7_3[needs$Q22=="0"]))
summary(as.numeric(needs$Q7_3[needs$Q22=="1"]))

wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q22)) 

wilcox.test(as.numeric(needs$Q7_1) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q7_2) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q7_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q7_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q7_5) ~ as.factor(needs$Q24)) 

###
###
###

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q4_exp)) ###########
summary(as.numeric(needs$Q9_2[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q9_2[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q4_exp)) ###########
summary(as.numeric(needs$Q9_4[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q9_4[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q4_exp)) ###########
summary(as.numeric(needs$Q9_5[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q9_5[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q4_exp)) ###########
summary(as.numeric(needs$Q9_6[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q9_6[needs$Q4_exp=="1"]))


wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q4_red)) ##########
summary(as.numeric(needs$Q9_1[needs$Q4_red=="0"]))
summary(as.numeric(needs$Q9_1[needs$Q4_red=="1"]))

wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q4_red)) ##########
summary(as.numeric(needs$Q9_2[needs$Q4_red=="0"]))
summary(as.numeric(needs$Q9_2[needs$Q4_red=="1"]))

wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q4_red)) ##########
summary(as.numeric(needs$Q9_3[needs$Q4_red=="0"]))
summary(as.numeric(needs$Q9_3[needs$Q4_red=="1"]))

wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q4_red)) ##########
summary(as.numeric(needs$Q9_4[needs$Q4_red=="0"]))
summary(as.numeric(needs$Q9_4[needs$Q4_red=="1"]))

wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q4_man)) ##########
summary(as.numeric(needs$Q9_5[needs$Q4_man=="0"]))
summary(as.numeric(needs$Q9_5[needs$Q4_man=="1"]))

wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q4_man)) 

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q4_maj)) 

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q31_bfe)) 
wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q31_bfe)) 

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q31_bfr)) 
wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q31_bfr))

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q22)) #########
summary(as.numeric(needs$Q9_2[needs$Q22=="0"]))
summary(as.numeric(needs$Q9_2[needs$Q22=="1"]))

wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q22)) #########
summary(as.numeric(needs$Q9_4[needs$Q22=="0"]))
summary(as.numeric(needs$Q9_4[needs$Q22=="1"]))

wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q22)) 

wilcox.test(as.numeric(needs$Q9_1) ~ as.factor(needs$Q24)) #########
summary(as.numeric(needs$Q9_1[needs$Q24=="0"]))
summary(as.numeric(needs$Q9_1[needs$Q24=="1"]))

wilcox.test(as.numeric(needs$Q9_2) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q9_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q9_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q9_5) ~ as.factor(needs$Q24)) 
wilcox.test(as.numeric(needs$Q9_6) ~ as.factor(needs$Q24)) 

###
###
###

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q4_exp)) ########
summary(as.numeric(needs$Q11_3[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q11_3[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q4_exp)) ########
summary(as.numeric(needs$Q11_4[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q11_4[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q4_exp)) ########
summary(as.numeric(needs$Q11_6[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q11_6[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q4_red)) ########
summary(as.numeric(needs$Q11_2[needs$Q4_red=="0"]))
summary(as.numeric(needs$Q11_2[needs$Q4_red=="1"]))

wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q4_man)) 
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q4_man)) 

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q4_maj)) 

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q31_bfe)) 
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q31_bfe)) 

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q31_bfr)) 
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q31_bfr)) 

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q22)) 

wilcox.test(as.numeric(needs$Q11_1) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q11_2) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q11_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q11_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q11_5) ~ as.factor(needs$Q24)) 
wilcox.test(as.numeric(needs$Q11_6) ~ as.factor(needs$Q24)) 

###
###
###

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q4_exp)) ########## 
summary(as.numeric(needs$Q13_4[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q13_4[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q4_exp)) ##########
summary(as.numeric(needs$Q13_5[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q13_5[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q4_exp)) 

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q4_red)) ##########
summary(as.numeric(needs$Q13_4[needs$Q4_red=="0"]))
summary(as.numeric(needs$Q13_4[needs$Q4_red=="1"]))

wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q4_rob)) ##########
summary(as.numeric(needs$Q13_4[needs$Q4_rob=="0"]))
summary(as.numeric(needs$Q13_4[needs$Q4_rob=="1"]))

wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q4_man)) 
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q4_man)) 

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q13_1[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q13_1[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q13_2[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q13_2[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q13_3[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q13_3[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q13_4[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q13_4[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q4_maj)) 

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q31_bfe)) 
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q31_bfe)) 

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q31_wh)) 
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q31_bfr)) 
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q31_bfr)) ##########
summary(as.numeric(needs$Q13_6[needs$Q31_bfr=="0"]))
summary(as.numeric(needs$Q13_6[needs$Q31_bfr=="1"]))


wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q22))

wilcox.test(as.numeric(needs$Q13_1) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q13_2) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q13_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q13_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q13_5) ~ as.factor(needs$Q24)) 
wilcox.test(as.numeric(needs$Q13_6) ~ as.factor(needs$Q24))

###
###
###

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q4_exp)) 

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q4_man)) ##########
summary(as.numeric(needs$Q27_2[needs$Q4_man=="0"]))
summary(as.numeric(needs$Q27_2[needs$Q4_man=="1"]))

wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q4_man)) ##########
summary(as.numeric(needs$Q27_4[needs$Q4_man=="0"]))
summary(as.numeric(needs$Q27_4[needs$Q4_man=="1"]))

wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q4_man)) ##########
summary(as.numeric(needs$Q27_5[needs$Q4_man=="0"]))
summary(as.numeric(needs$Q27_5[needs$Q4_man=="1"]))

wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q4_man)) 

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q4_maj)) 

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q31_bfe)) 
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q31_bfe)) 

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q31_wh)) 
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q31_bfr)) 
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q31_bfr)) 

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q22)) 

wilcox.test(as.numeric(needs$Q27_1) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q27_2) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q27_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q27_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q27_5) ~ as.factor(needs$Q24)) 
wilcox.test(as.numeric(needs$Q27_6) ~ as.factor(needs$Q24)) 

###
###
###

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q4_exp)) ##########
summary(as.numeric(needs$Q29_1[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q29_1[needs$Q4_exp=="1"]))


wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q4_exp)) 

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q4_man)) ###########
summary(as.numeric(needs$Q29_2[needs$Q4_man=="0"]))
summary(as.numeric(needs$Q29_2[needs$Q4_man=="1"]))

wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q4_man)) 
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q4_man)) 
wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q4_man)) 

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q29_1[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q29_1[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q29_2[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q29_2[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q29_4[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q29_4[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q29_6[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q29_6[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q4_maj)) ##########
summary(as.numeric(needs$Q29_7[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q29_7[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q31_bfe)) 
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q31_bfe))

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q31_wh)) 
wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q31_bfr)) ############# 
summary(as.numeric(needs$Q29_5[needs$Q31_bfr=="0"]))
summary(as.numeric(needs$Q29_5[needs$Q31_bfr=="1"]))

wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q31_bfr)) 
wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q31_bfr)) 

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q22)) ###########
summary(as.numeric(needs$Q29_1[needs$Q22=="0"]))
summary(as.numeric(needs$Q29_1[needs$Q22=="1"]))

wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q22)) ###########
summary(as.numeric(needs$Q29_2[needs$Q22=="0"]))
summary(as.numeric(needs$Q29_2[needs$Q22=="1"]))

wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q22)) ###########
summary(as.numeric(needs$Q29_3[needs$Q22=="0"]))
summary(as.numeric(needs$Q29_3[needs$Q22=="1"]))

wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q22))

wilcox.test(as.numeric(needs$Q29_1) ~ as.factor(needs$Q24)) ##########
summary(as.numeric(needs$Q29_1[needs$Q24=="0"]))
summary(as.numeric(needs$Q29_1[needs$Q24=="1"]))

wilcox.test(as.numeric(needs$Q29_2) ~ as.factor(needs$Q24)) ##########
summary(as.numeric(needs$Q29_2[needs$Q24=="0"]))
summary(as.numeric(needs$Q29_2[needs$Q24=="1"]))

wilcox.test(as.numeric(needs$Q29_3) ~ as.factor(needs$Q24))

wilcox.test(as.numeric(needs$Q29_4) ~ as.factor(needs$Q24)) ##########
summary(as.numeric(needs$Q29_4[needs$Q24=="0"]))
summary(as.numeric(needs$Q29_4[needs$Q24=="1"]))

wilcox.test(as.numeric(needs$Q29_5) ~ as.factor(needs$Q24))  
wilcox.test(as.numeric(needs$Q29_6) ~ as.factor(needs$Q24)) ##########
summary(as.numeric(needs$Q29_6[needs$Q24=="0"]))
summary(as.numeric(needs$Q29_6[needs$Q24=="1"]))

wilcox.test(as.numeric(needs$Q29_7) ~ as.factor(needs$Q24))

###
###
###

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q4_exp)) #############
summary(as.numeric(needs$Q34_2[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q34_2[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q4_exp)) ############
summary(as.numeric(needs$Q34_4[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q34_4[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q4_exp)) 
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q4_exp)) 

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q4_red)) ############
summary(as.numeric(needs$Q34_4[needs$Q4_red=="0"]))
summary(as.numeric(needs$Q34_4[needs$Q4_red=="1"]))

wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q4_red)) 
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q4_man)) ##############
summary(as.numeric(needs$Q34_2[needs$Q4_man=="0"]))
summary(as.numeric(needs$Q34_2[needs$Q4_man=="1"]))

wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q4_man)) 
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q4_man)) 
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q4_man)) #############
summary(as.numeric(needs$Q34_7[needs$Q4_man=="0"]))
summary(as.numeric(needs$Q34_7[needs$Q4_man=="1"]))


wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q4_maj)) #############
summary(as.numeric(needs$Q34_1[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q34_1[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q4_maj)) #############
summary(as.numeric(needs$Q34_3[needs$Q4_maj=="0"]))
summary(as.numeric(needs$Q34_3[needs$Q4_maj=="1"]))

wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q4_maj))

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q31_bfe)) 
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q31_bfe)) ##########
summary(as.numeric(needs$Q34_7[needs$Q31_bfe=="0"]))
summary(as.numeric(needs$Q34_7[needs$Q31_bfe=="1"]))

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q31_wh)) 
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q31_bfr)) 
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q31_bfr)) 
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q31_bfr)) 

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q22)) ##########
summary(as.numeric(needs$Q34_4[needs$Q22=="0"]))
summary(as.numeric(needs$Q34_4[needs$Q22=="1"]))

wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q22)) 

wilcox.test(as.numeric(needs$Q34_1) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q34_2) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q34_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q34_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q34_5) ~ as.factor(needs$Q24)) 
wilcox.test(as.numeric(needs$Q34_6) ~ as.factor(needs$Q24)) 
wilcox.test(as.numeric(needs$Q34_7) ~ as.factor(needs$Q24)) 

###
###
###

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q4_exp)) 

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q4_rob)) ###########
summary(as.numeric(needs$Q36_5[needs$Q4_rob=="0"]))
summary(as.numeric(needs$Q36_5[needs$Q4_rob=="1"]))

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q4_man)) 

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q4_maj)) 

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q31_bfe)) 

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q31_bfr)) ###########
summary(as.numeric(needs$Q36_4[needs$Q31_bfr=="0"]))
summary(as.numeric(needs$Q36_4[needs$Q31_bfr=="1"]))

wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q31_bfr)) ###########
summary(as.numeric(needs$Q36_5[needs$Q31_bfr=="0"]))
summary(as.numeric(needs$Q36_5[needs$Q31_bfr=="1"]))

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q22)) 
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q22)) 

wilcox.test(as.numeric(needs$Q36_1) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q36_2) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q36_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q36_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q36_5) ~ as.factor(needs$Q24)) 

###
###
###

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q4_exp)) ##########
summary(as.numeric(needs$Q38_3[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q38_3[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q4_exp)) ##########
summary(as.numeric(needs$Q38_4[needs$Q4_exp=="0"]))
summary(as.numeric(needs$Q38_4[needs$Q4_exp=="1"]))

wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q4_exp)) 

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q4_red))

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q4_rob)) 
wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q4_rob))

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q4_man)) ######
summary(as.numeric(needs$Q38_3[needs$Q4_man=="0"]))
summary(as.numeric(needs$Q38_3[needs$Q4_man=="1"]))

wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q4_man)) 

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q4_maj)) 
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q4_maj))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q4_maj)) 

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q31_bfe)) 

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q31_wh))

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q31_bfr))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q31_bfr))

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q22)) 

wilcox.test(as.numeric(needs$Q38_1) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q38_2) ~ as.factor(needs$Q24)) ##########
summary(as.numeric(needs$Q38_2[needs$Q24=="0"]))
summary(as.numeric(needs$Q38_2[needs$Q24=="1"]))

wilcox.test(as.numeric(needs$Q38_3) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q38_4) ~ as.factor(needs$Q24))
wilcox.test(as.numeric(needs$Q38_5) ~ as.factor(needs$Q24)) 

wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q4_exp))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q4_red))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q4_rob))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q4_man))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q4_maj))
kruskal.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q43))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q31_wh))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q31_bfe))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q31_bfr))
kruskal.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q20_size))
kruskal.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q1_1))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q22))
wilcox.test(as.numeric(needs$Q26_int) ~ as.factor(needs$Q24))
cor.test(as.numeric(needs$Q26_int), needs$Q23_1, method=c("spearman"))
cor.test(as.numeric(needs$Q26_int), needs$Q25_1, method=c("spearman"))
cor.test(as.numeric(needs$Q26_int), needs$Q21_int1, method=c("spearman"))
cor.test(as.numeric(needs$Q26_int), needs$Q21_int2, method=c("spearman"))


###spearman

cor.test(needs$Q5_3, needs$Q23_1, method=c("spearman"))
cor.test(needs$Q5_3, needs$Q25_1, method=c("spearman"))

cor.test(needs$Q5_1, needs$Q25_1, method=c("spearman"))

cor.test(needs$Q7_3, needs$Q21_int2, method=c("spearman"))

cor.test(needs$Q9_3, needs$Q25_1, method=c("spearman"))

cor.test(needs$Q13_4, needs$Q25_1, method=c("spearman"))

cor.test(needs$Q27_2, needs$Q25_1, method=c("spearman"))

cor.test(needs$Q27_6, needs$Q21_int1, method=c("spearman"))

cor.test(needs$Q29_5, needs$Q21_int2, method=c("spearman"))

cor.test(needs$Q29_4, needs$Q21_int2, method=c("spearman"))

cor.test(needs$Q34_4, needs$Q21_int2, method=c("spearman"))

cor.test(needs$Q34_4, needs$Q25_1, method=c("spearman"))

cor.test(needs$Q34_5, needs$Q23_1, method=c("spearman"))

cor.test(needs$Q36_5, needs$Q25_1, method=c("spearman"))
cor.test(needs$Q36_1, needs$Q25_1, method=c("spearman"))#
cor.test(needs$Q36_2, needs$Q25_1, method=c("spearman"))#
cor.test(needs$Q36_3, needs$Q25_1, method=c("spearman"))
cor.test(needs$Q36_4, needs$Q25_1, method=c("spearman"))

kruskal.test(needs$Q13_5~needs$Q43)
kruskal.test(needs$Q13_1~needs$Q43)
kruskal.test(needs$Q13_2~needs$Q43)
kruskal.test(needs$Q13_3~needs$Q43)
kruskal.test(needs$Q13_4~needs$Q43)
kruskal.test(needs$Q13_6~needs$Q43)

kruskal.test(needs$Q5_1~needs$Q43)
kruskal.test(needs$Q5_2~needs$Q43)
kruskal.test(needs$Q5_3~needs$Q43)
kruskal.test(needs$Q5_4~needs$Q43)
kruskal.test(needs$Q5_5~needs$Q43)
kruskal.test(needs$Q5_6~needs$Q43)
kruskal.test(needs$Q5_7~needs$Q43)
kruskal.test(needs$Q5_8~needs$Q43)
kruskal.test(needs$Q5_9~needs$Q43)
kruskal.test(needs$Q5_10~needs$Q43)

kruskal.test(needs$Q7_1~needs$Q43)
kruskal.test(needs$Q7_2~needs$Q43)
kruskal.test(needs$Q7_3~needs$Q43)
kruskal.test(needs$Q7_4~needs$Q43)
kruskal.test(needs$Q7_5~needs$Q43)

kruskal.test(needs$Q9_1~needs$Q43)
kruskal.test(needs$Q9_2~needs$Q43)
kruskal.test(needs$Q9_3~needs$Q43)
kruskal.test(needs$Q9_4~needs$Q43)
kruskal.test(needs$Q9_5~needs$Q43)
kruskal.test(needs$Q9_6~needs$Q43)

kruskal.test(needs$Q11_1~needs$Q43)
kruskal.test(needs$Q11_2~needs$Q43)
kruskal.test(needs$Q11_3~needs$Q43)
kruskal.test(needs$Q11_4~needs$Q43)
kruskal.test(needs$Q11_5~needs$Q43)
kruskal.test(needs$Q11_6~needs$Q43)

kruskal.test(needs$Q13_1~needs$Q43)
kruskal.test(needs$Q13_2~needs$Q43)
kruskal.test(needs$Q13_3~needs$Q43)
kruskal.test(needs$Q13_4~needs$Q43)
kruskal.test(needs$Q13_5~needs$Q43)
kruskal.test(needs$Q13_6~needs$Q43)

kruskal.test(needs$Q27_1~needs$Q43)
kruskal.test(needs$Q27_2~needs$Q43)
kruskal.test(needs$Q27_3~needs$Q43)
kruskal.test(needs$Q27_4~needs$Q43)
kruskal.test(needs$Q27_5~needs$Q43)
kruskal.test(needs$Q27_6~needs$Q43)

kruskal.test(needs$Q29_1~needs$Q43)
kruskal.test(needs$Q29_2~needs$Q43)
kruskal.test(needs$Q29_3~needs$Q43)
kruskal.test(needs$Q29_4~needs$Q43)
kruskal.test(needs$Q29_5~needs$Q43)
kruskal.test(needs$Q29_6~needs$Q43)

kruskal.test(needs$Q34_1~needs$Q43)
kruskal.test(needs$Q34_2~needs$Q43)
kruskal.test(needs$Q34_3~needs$Q43)
kruskal.test(needs$Q34_4~needs$Q43)
kruskal.test(needs$Q34_5~needs$Q43)
kruskal.test(needs$Q34_6~needs$Q43)
kruskal.test(needs$Q34_7~needs$Q43)

kruskal.test(needs$Q36_1~needs$Q43)
kruskal.test(needs$Q36_2~needs$Q43)
kruskal.test(needs$Q36_3~needs$Q43)
kruskal.test(needs$Q36_4~needs$Q43)
kruskal.test(needs$Q36_5~needs$Q43)
kruskal.test(needs$Q36_6~needs$Q43)
kruskal.test(needs$Q36_7~needs$Q43)

kruskal.test(needs$Q38_1~needs$Q43)
kruskal.test(needs$Q38_2~needs$Q43)
kruskal.test(needs$Q38_3~needs$Q43)
kruskal.test(needs$Q38_4~needs$Q43)
kruskal.test(needs$Q38_5~needs$Q43)
kruskal.test(needs$Q38_6~needs$Q43)
kruskal.test(needs$Q38_7~needs$Q43)

kruskal.test(as.numeric(needs$Q34_6), needs$Q1_1)
dunnTest(as.numeric(needs$Q34_6), needs$Q1_1, method="bh")
median(as.numeric(needs$Q34_6)[needs$Q1_1=="Dairy"], na.rm=T)
median(as.numeric(needs$Q34_6)[needs$Q1_1=="Other"], na.rm=T)
median(as.numeric(needs$Q34_6)[needs$Q1_1=="Fresh produce"], na.rm=T)

summary(as.numeric(needs$Q34_6)[needs$Q1_1=="Dairy"], na.rm=T)
summary(as.numeric(needs$Q34_6)[needs$Q1_1=="Other"], na.rm=T)
summary(as.numeric(needs$Q34_6)[needs$Q1_1=="Fresh produce"], na.rm=T)

kruskal.test(needs$Q11_6, needs$Q43)
library(FSA)
dunnTest(as.numeric(needs$Q11_6), needs$Q43)

###Spearman correlation
needs <- read.csv("NeedsAssessmentData.csv")

#Replace descriptive values with numbers
needs[needs=="1 -\nNot at all important"] <- 1
needs[needs=="2 -\nSlightly important"] <- 2
needs[needs=="3 -\nModerately important"] <- 3
needs[needs=="4 -\nVery important"] <- 4
needs[needs=="5 -\nExtremely important"] <- 5

needs[needs=="Do not know"] <- NA
needs[needs=="1 -\nNot at all concerning"] <- 1
needs[needs=="2 -\nSlightly concerning"] <- 2
needs[needs=="3 -\nModerately concerning"] <- 3
needs[needs=="4 -\nVery concerning"] <- 4
needs[needs=="5 -\nExtremely concerning"] <- 5

needs[needs=="Do not know"] <- NA
needs[needs=="1 -\nNot at all challenging"] <- 1
needs[needs=="2 -\nSlightly challenging"] <- 2
needs[needs=="3 -\nModerately challenging"] <- 3
needs[needs=="4 -\nVery challenging"] <- 4
needs[needs=="5 -\nExtremely challenging"] <- 5

needs[needs=="Do not know"] <- NA
needs[needs=="Not applicable"] <- NA
needs[needs=="1 -\nNo risk"] <- 1
needs[needs=="2 -\nLow risk"] <- 2

needs[needs=="3 -\nModerate risk"] <- 3
needs[needs=="4 -\nHigh risk"] <- 4
needs[needs=="5 - \nVery high risk"] <- 5


needs[needs=="Yes"] <- 1
needs[needs=="No"] <- 0
needs[needs=="Yes, but only partially/ temporarily"] <- 0.5
